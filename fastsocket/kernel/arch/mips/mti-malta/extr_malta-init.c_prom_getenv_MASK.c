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
 char* FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 

char *FUNC3(char *envname)
{
	/*
	 * Return a pointer to the given environment variable.
	 * In 64-bit mode: we're using 64-bit pointers, but all pointers
	 * in the PROM structures are only 32-bit, so we need some
	 * workarounds, if we are running in 64-bit mode.
	 */
	int i, index=0;

	i = FUNC1(envname);

	while (FUNC0(index)) {
		if(FUNC2(envname, FUNC0(index), i) == 0) {
			return(FUNC0(index+1));
		}
		index += 2;
	}

	return NULL;
}