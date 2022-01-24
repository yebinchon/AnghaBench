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
typedef  int u32 ;
struct mc13783 {int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int FUNC0 (struct mc13783*,int,int*) ; 
 int FUNC1 (struct mc13783*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mc13783 *mc13783, int reg, u32 mask, u32 val)
{
	u32 tmp;
	int ret;

	FUNC2(&mc13783->io_lock);

	ret = FUNC0(mc13783, reg, &tmp);
	tmp = (tmp & ~mask) | val;
	if (ret == 0)
		ret = FUNC1(mc13783, reg, tmp);

	FUNC3(&mc13783->io_lock);

	return ret;
}