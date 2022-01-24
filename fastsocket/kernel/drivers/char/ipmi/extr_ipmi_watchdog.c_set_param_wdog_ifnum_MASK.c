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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 scalar_t__ ifnum_to_use ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (char const*,struct kernel_param*) ; 
 scalar_t__ watchdog_ifnum ; 

__attribute__((used)) static int FUNC3(const char *val, struct kernel_param *kp)
{
	int rv = FUNC2(val, kp);
	if (rv)
		return rv;
	if ((ifnum_to_use < 0) || (ifnum_to_use == watchdog_ifnum))
		return 0;

	FUNC1(watchdog_ifnum);
	FUNC0(ifnum_to_use);
	return 0;
}