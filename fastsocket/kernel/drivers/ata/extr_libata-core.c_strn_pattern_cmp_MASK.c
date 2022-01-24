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
 char* FUNC0 (char const*,int) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC3(const char *patt, const char *name, int wildchar)
{
	const char *p;
	int len;

	/*
	 * check for trailing wildcard: *\0
	 */
	p = FUNC0(patt, wildchar);
	if (p && ((*(p + 1)) == 0))
		len = p - patt;
	else {
		len = FUNC1(name);
		if (!len) {
			if (!*patt)
				return 0;
			return -1;
		}
	}

	return FUNC2(patt, name, len);
}