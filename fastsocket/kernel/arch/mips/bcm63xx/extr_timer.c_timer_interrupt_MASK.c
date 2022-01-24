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
typedef  int u32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  data; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int BCM63XX_TIMER_COUNT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  TIMER_IRQSTAT_REG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* timer_data ; 
 int /*<<< orphan*/  timer_data_lock ; 
 int /*<<< orphan*/  timer_reg_lock ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	u32 stat;
	int i;

	FUNC3(&timer_reg_lock);
	stat = FUNC1(TIMER_IRQSTAT_REG);
	FUNC2(stat, TIMER_IRQSTAT_REG);
	FUNC4(&timer_reg_lock);

	for (i = 0; i < BCM63XX_TIMER_COUNT; i++) {
		if (!(stat & FUNC0(i)))
			continue;

		FUNC3(&timer_data_lock);
		if (!timer_data[i].cb) {
			FUNC4(&timer_data_lock);
			continue;
		}

		timer_data[i].cb(timer_data[i].data);
		FUNC4(&timer_data_lock);
	}

	return IRQ_HANDLED;
}