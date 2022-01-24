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
typedef  int /*<<< orphan*/  u32 ;
struct mc13783 {int /*<<< orphan*/  io_lock; } ;

/* Variables and functions */
 int FUNC0 (struct mc13783*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct mc13783 *mc13783, int reg_num, u32 *reg_val)
{
	int ret;

	FUNC1(&mc13783->io_lock);
	ret = FUNC0(mc13783, reg_num, reg_val);
	FUNC2(&mc13783->io_lock);

	return ret;
}