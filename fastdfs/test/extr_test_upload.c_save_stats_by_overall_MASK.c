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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EPERM ; 
 char* STAT_FILENAME_BY_OVERALL ; 
 char* FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,char*) ; 
 int proccess_index ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int) ; 
 scalar_t__ start_time ; 
 int success_count ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int total_count ; 

__attribute__((used)) static int FUNC7()
{
	char filename[64];
	FILE *fp;

	FUNC5(filename, "%s.%d", STAT_FILENAME_BY_OVERALL, proccess_index);
	if ((fp=FUNC2(filename, "wb")) == NULL)
	{
		FUNC4("open file %s fail, errno: %d, error info: %s\n", 
			filename, errno, FUNC0(errno));
		return errno != 0 ? errno : EPERM;
	}

	FUNC3(fp, "#total_count success_count  time_used(s)\n");
	FUNC3(fp, "%d %d %d\n", total_count, success_count, (int)(FUNC6(NULL) - start_time));

	FUNC1(fp);
	return 0;
}