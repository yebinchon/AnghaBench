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
typedef  int /*<<< orphan*/  StorageBinLogReader ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int const,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(StorageBinLogReader *pReader, \
		char *line, const int line_size, int *line_length)
{
	int result;

	result = FUNC0(pReader, line, \
			line_size, line_length);
	if (result != ENOENT)
	{
		return result;
	}

	result = FUNC1(pReader);
	if (result != 0)
	{
		return result;
	}

	return FUNC0(pReader, line, \
			line_size, line_length);
}