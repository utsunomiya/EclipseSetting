#!/bin/sh

SEMANTIC_FILE=".metadata/.plugins/org.eclipse.core.runtime/.settings"
C_SEMANTIC_FILE="org.eclipse.cdt.ui.prefs"
C_SEMANTIC_FILE_PATH=$SEMANTIC_FILE/$C_SEMANTIC_FILE

BACKUP_DIR="SettingBackUp"

if [ $# != 1 ]; then
	echo -e "usage : $0 [directory]" 1>&2
	exit 1
fi

cp $1/$C_SEMANTIC_FILE_PATH $BACKUP_DIR

