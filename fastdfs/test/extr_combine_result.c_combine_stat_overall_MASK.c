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
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 char* STAT_FILENAME_BY_OVERALL ; 
 char* FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,char*) ; 
 int proccess_count ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int) ; 
 int FUNC6 (char*,char*,int*,int*,int*) ; 

__attribute__((used)) static int FUNC7(int *ptotal_count, int *psuccess_count, int *ptime_used)
{
	char filename[64];
	FILE *fp;
	int proccess_index;
	char buff[256];
	int time_used;
	int total_count;
	int success_count;

	*ptotal_count = 0;
	*psuccess_count = 0; 
	*ptime_used = 0;

	for (proccess_index=0; proccess_index<proccess_count; proccess_index++)
	{
		FUNC5(filename, "%s.%d", STAT_FILENAME_BY_OVERALL, proccess_index);
		if ((fp=FUNC3(filename, "r")) == NULL)
		{
			FUNC4("open file %s fail, errno: %d, error info: %s\n", 
				filename, errno, FUNC0(errno));
			return errno != 0 ? errno : EPERM;
		}

		while (FUNC2(buff, sizeof(buff), fp) != NULL)
		{
			if (*buff == '#')
			{
				continue;
			}

			if (FUNC6(buff, "%d %d %d", &total_count, &success_count, &time_used) != 3)
			{
				FUNC4("sscanf %s fail, errno: %d, error info: %s\n", 
					filename, errno, FUNC0(errno));
				return errno != 0 ? errno : EINVAL;
			}

			break;
		}

		*ptotal_count += total_count;
		*psuccess_count += success_count; 
		*ptime_used += time_used;
		FUNC1(fp);
	}

	*ptime_used /= proccess_count;

	return 0;
}