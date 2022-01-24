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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 char* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC3(const char *str, gfp_t gfp)
{
	char *ret, *ustr;

	ustr = ret = FUNC0(FUNC1(str) + 1, gfp);

	if (!ret)
		return NULL;

	while (*str)
		*ustr++ = FUNC2(*str++);

	*ustr = 0;

	return ret;
}