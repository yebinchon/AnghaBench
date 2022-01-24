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
struct mon_msg {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ mon_dcss_end ; 
 scalar_t__ mon_dcss_start ; 
 scalar_t__ FUNC0 (struct mon_msg*) ; 
 int FUNC1 (struct mon_msg*) ; 
 scalar_t__ FUNC2 (struct mon_msg*) ; 
 scalar_t__ FUNC3 (struct mon_msg*,int) ; 
 scalar_t__ FUNC4 (struct mon_msg*) ; 
 scalar_t__ FUNC5 (struct mon_msg*) ; 

__attribute__((used)) static int FUNC6(struct mon_msg *monmsg)
{
	if ((FUNC4(monmsg) <= FUNC5(monmsg)) ||
	    (FUNC5(monmsg) < mon_dcss_start) ||
	    (FUNC4(monmsg) > mon_dcss_end) ||
	    (FUNC3(monmsg, 0) == 0) ||
	    (FUNC1(monmsg) % 12 != 0) ||
	    (FUNC0(monmsg) <= FUNC2(monmsg)) ||
	    (FUNC0(monmsg) > mon_dcss_end) ||
	    (FUNC2(monmsg) < mon_dcss_start) ||
	    ((FUNC3(monmsg, 1) == 0) && (FUNC3(monmsg, 2) == 0)))
		return -EINVAL;
	return 0;
}