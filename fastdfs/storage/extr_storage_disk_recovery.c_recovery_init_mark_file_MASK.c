#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char* MARK_ITEM_BINLOG_OFFSET ; 
 char* MARK_ITEM_FETCH_BINLOG_DONE ; 
 char* MARK_ITEM_SAVED_STORAGE_STATUS ; 
 int MAX_PATH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 int saved_storage_status ; 
 int FUNC1 (char*,char*,char*,int,char*,char*,int const) ; 
 int FUNC2 (char*,char*,int) ; 

__attribute__((used)) static int FUNC3(const char *pBasePath, \
		const bool fetch_binlog_done)
{
	char full_filename[MAX_PATH_SIZE];
	char buff[128];
	int len;

	FUNC0(pBasePath, full_filename);

	len = FUNC1(buff, \
		"%s=%d\n" \
		"%s=0\n" \
		"%s=%d\n", \
		MARK_ITEM_SAVED_STORAGE_STATUS, saved_storage_status, \
		MARK_ITEM_BINLOG_OFFSET, \
		MARK_ITEM_FETCH_BINLOG_DONE, fetch_binlog_done);
	return FUNC2(full_filename, buff, len);
}