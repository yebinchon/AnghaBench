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
 unsigned int KSTRTOX_OVERFLOW ; 
 unsigned int FUNC0 (char const*,unsigned int,unsigned long long*) ; 
 char* FUNC1 (char const*,unsigned int*) ; 

unsigned long long FUNC2(const char *cp, char **endp, unsigned int base)
{
	unsigned long long result;
	unsigned int rv;

	cp = FUNC1(cp, &base);
	rv = FUNC0(cp, base, &result);
	/* FIXME */
	cp += (rv & ~KSTRTOX_OVERFLOW);

	if (endp)
		*endp = (char *)cp;
	return result;
}