#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int testing_irq; int irq_occurred; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ MGSLPC_INFO ;

/* Variables and functions */
 scalar_t__ CHA ; 
 int /*<<< orphan*/  CMD_START_TIMER ; 
 int /*<<< orphan*/  IRQ_TIMER ; 
 scalar_t__ TIMR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC8(MGSLPC_INFO *info)
{
	unsigned long end_time;
	unsigned long flags;

	FUNC5(&info->lock,flags);
	FUNC4(info);

	info->testing_irq = true;
	FUNC0(info);

	info->irq_occurred = false;

	/* init hdlc mode */

	FUNC1(info, CHA, IRQ_TIMER);
	FUNC7(info, CHA + TIMR, 0);	/* 512 cycles */
	FUNC2(info, CHA, CMD_START_TIMER);

	FUNC6(&info->lock,flags);

	end_time=100;
	while(end_time-- && !info->irq_occurred) {
		FUNC3(10);
	}

	info->testing_irq = false;

	FUNC5(&info->lock,flags);
	FUNC4(info);
	FUNC6(&info->lock,flags);

	return info->irq_occurred;
}