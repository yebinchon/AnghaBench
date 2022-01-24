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
 int EINVAL ; 
 int /*<<< orphan*/  MENELAUS_MCT_CTRL1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* the_menelaus ; 

int FUNC4(int slot, int enable)
{
	int ret, val;

	if (slot != 1 && slot != 2)
		return -EINVAL;
	FUNC2(&the_menelaus->lock);
	ret = FUNC0(MENELAUS_MCT_CTRL1);
	if (ret < 0) {
		FUNC3(&the_menelaus->lock);
		return ret;
	}
	val = ret;
	if (slot == 1) {
		if (enable)
			val |= 1 << 2;
		else
			val &= ~(1 << 2);
	} else {
		if (enable)
			val |= 1 << 3;
		else
			val &= ~(1 << 3);
	}
	ret = FUNC1(MENELAUS_MCT_CTRL1, val);
	FUNC3(&the_menelaus->lock);

	return ret;
}