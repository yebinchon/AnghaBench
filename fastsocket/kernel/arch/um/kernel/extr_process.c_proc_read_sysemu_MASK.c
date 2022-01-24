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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int FUNC0 () ; 
 int FUNC1 (char*,int,char*,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(char *buf, char **start, off_t offset, int size,int *eof, void *data)
{
	if (FUNC1(buf, size, "%d\n", FUNC0()) < size)
		/* No overflow */
		*eof = 1;

	return FUNC2(buf);
}