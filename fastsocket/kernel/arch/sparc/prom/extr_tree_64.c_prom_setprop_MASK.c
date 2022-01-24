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
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P1275_ARG_IN_BUF ; 
 int /*<<< orphan*/  P1275_ARG_IN_STRING ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ ldom_domaining_enabled ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int FUNC4 (char*,int,int,char const*,char*,int /*<<< orphan*/ ) ; 

int
FUNC5(int node, const char *pname, char *value, int size)
{
	if (size == 0)
		return 0;
	if ((pname == 0) || (value == 0))
		return 0;
	
#ifdef CONFIG_SUN_LDOMS
	if (ldom_domaining_enabled) {
		ldom_set_var(pname, value);
		return 0;
	}
#endif
	return FUNC4 ("setprop", FUNC0(1,P1275_ARG_IN_STRING)|
					  FUNC0(2,P1275_ARG_IN_BUF)|
					  FUNC1(4, 1), 
					  node, pname, value, FUNC2(size));
}