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
struct sys_device {unsigned int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct sys_device*) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sys_device *sys_dev)
{
	unsigned int cpu = sys_dev->id;
	int retval;

	if (FUNC2(cpu))
		return 0;

	if (FUNC4(FUNC3(cpu)))
		FUNC0();

	retval = FUNC1(sys_dev);
	return retval;
}