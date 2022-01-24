#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* filename; int bytes; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFF_SIZE ; 
 int FILE_TYPE_COUNT ; 
 double RAND_MAX ; 
 int /*<<< orphan*/  SRAND_SEED ; 
 char* FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* files ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8()
{
#define BUFF_SIZE  (1 * 1024)
	int i;
	int k;
	int loop;
	FILE *fp;
	unsigned char buff[BUFF_SIZE];
	unsigned char *p;
	unsigned char *pEnd;

	FUNC7(SRAND_SEED);
	pEnd = buff + BUFF_SIZE;
	for (i=0; i<FILE_TYPE_COUNT; i++)
	{
		fp = FUNC2(files[i].filename, "wb");
		if (fp == NULL)
		{
			FUNC5("open file %s fail, errno: %d, error info: %s\n", 
				files[i].filename, errno, FUNC0(errno));
			return 1;
		}

		loop = files[i].bytes / BUFF_SIZE;
		for (k=0; k<loop-1; k++)
		{
			for (p=buff; p<pEnd; p++)
			{
				*p = (int)(255 * ((double)FUNC6() / RAND_MAX));
			}

			if (FUNC3(buff, BUFF_SIZE, 1, fp) != 1)
			{
				FUNC5("write file %s fail, errno: %d, error info: %s\n", 
					files[i].filename, errno, FUNC0(errno));
		        FUNC1(fp);
				return 1;
			}
		}

		FUNC4(buff, 0xFF, BUFF_SIZE);
		if (FUNC3(buff, BUFF_SIZE, 1, fp) != 1)
		{
			FUNC5("write file %s fail, errno: %d, error info: %s\n", 
				files[i].filename, errno, FUNC0(errno));
		    FUNC1(fp);
			return 1;
		}

		FUNC1(fp);
	}

	FUNC5("done.\n");

	return 0;
}