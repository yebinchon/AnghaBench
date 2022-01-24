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
 int ENOENT ; 
 int MAX_PATH_SIZE ; 
 int binlog_compress_index ; 
 int FUNC0 () ; 
 int FUNC1 (char*) ; 
 int g_binlog_index ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(void *args)
{
	char full_filename[MAX_PATH_SIZE];
    int until_index;
    int bindex;
    int result;

    if (binlog_compress_index >= g_binlog_index)
    {
        return 0;
    }

    until_index = FUNC0();
    for (bindex = binlog_compress_index; bindex < until_index;
            bindex++)
    {
        FUNC2(bindex, full_filename);
        result = FUNC1(full_filename);
        if (!(result == 0 || result == ENOENT))
        {
            break;
        }

        binlog_compress_index = bindex + 1;
        FUNC3(g_binlog_index);
    }

    return 0;
}