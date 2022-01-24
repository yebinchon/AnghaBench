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
typedef  int /*<<< orphan*/  full_filename ;

/* Variables and functions */
 int MAX_PATH_SIZE ; 
 char* TRACKER_STATUS_FILENAME ; 
 char* TRACKER_STATUS_ITEM_LAST_CHECK_TIME ; 
 char* TRACKER_STATUS_ITEM_UP_TIME ; 
 scalar_t__ g_current_time ; 
 char* g_fdfs_base_path ; 
 scalar_t__ g_up_time ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char*) ; 
 int FUNC1 (char*,char*,char*,int,char*,int) ; 
 int FUNC2 (char*,char*,int) ; 

int FUNC3(void *args)
{
	char full_filename[MAX_PATH_SIZE];
	char buff[256];
	int len;

	FUNC0(full_filename, sizeof(full_filename), "%s/data/%s", \
		g_fdfs_base_path, TRACKER_STATUS_FILENAME);

	len = FUNC1(buff, "%s=%d\n" \
		      "%s=%d\n",
		TRACKER_STATUS_ITEM_UP_TIME, (int)g_up_time,
		TRACKER_STATUS_ITEM_LAST_CHECK_TIME, (int)g_current_time
	);

	return FUNC2(full_filename, buff, len);
}