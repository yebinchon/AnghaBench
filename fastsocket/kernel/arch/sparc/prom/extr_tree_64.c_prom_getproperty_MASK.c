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
 int /*<<< orphan*/  P1275_ARG_IN_STRING ; 
 int /*<<< orphan*/  P1275_ARG_OUT_BUF ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  prom_getprop_name ; 
 int FUNC4 (int,char const*) ; 

inline int FUNC5(int node, const char *prop,
			    char *buffer, int bufsize)
{
	int plen;

	plen = FUNC4(node, prop);
	if ((plen > bufsize) || (plen == 0) || (plen == -1)) {
		return -1;
	} else {
		/* Ok, things seem all right. */
		return FUNC3(prom_getprop_name, 
				 FUNC0(1,P1275_ARG_IN_STRING)|
				 FUNC0(2,P1275_ARG_OUT_BUF)|
				 FUNC1(4, 1), 
				 node, prop, buffer, FUNC2(plen));
	}
}