#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MENELAUS_GPIO_CTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* the_menelaus ; 

int FUNC4(int enable)
{
	int ret;

	FUNC2(&the_menelaus->lock);
	ret = FUNC0(MENELAUS_GPIO_CTRL);
	if (ret < 0)
		goto out;
	ret |= 0x02;
	if (enable)
		ret |= 1 << 5;
	else
		ret &= ~(1 << 5);
	ret = FUNC1(MENELAUS_GPIO_CTRL, ret);
out:
	FUNC3(&the_menelaus->lock);
	return ret;
}