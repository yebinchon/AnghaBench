#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
typedef  int u32 ;
struct TYPE_4__ {unsigned long data; void* function; } ;
struct pcnet32_access {int (* read_bcr ) (int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* write_bcr ) (int /*<<< orphan*/ ,int,int) ;} ;
struct pcnet32_private {int /*<<< orphan*/  lock; TYPE_1__ blink_timer; struct pcnet32_access a; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int HZ ; 
 int MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct pcnet32_private* FUNC4 (struct net_device*) ; 
 scalar_t__ pcnet32_led_blink_callback ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev, u32 data)
{
	struct pcnet32_private *lp = FUNC4(dev);
	struct pcnet32_access *a = &lp->a;
	ulong ioaddr = dev->base_addr;
	unsigned long flags;
	int i, regs[4];

	if (!lp->blink_timer.function) {
		FUNC1(&lp->blink_timer);
		lp->blink_timer.function = (void *)pcnet32_led_blink_callback;
		lp->blink_timer.data = (unsigned long)dev;
	}

	/* Save the current value of the bcrs */
	FUNC6(&lp->lock, flags);
	for (i = 4; i < 8; i++) {
		regs[i - 4] = a->read_bcr(ioaddr, i);
	}
	FUNC7(&lp->lock, flags);

	FUNC2(&lp->blink_timer, jiffies);
	FUNC5(TASK_INTERRUPTIBLE);

	/* AV: the limit here makes no sense whatsoever */
	if ((!data) || (data > (u32) (MAX_SCHEDULE_TIMEOUT / HZ)))
		data = (u32) (MAX_SCHEDULE_TIMEOUT / HZ);

	FUNC3(data * 1000);
	FUNC0(&lp->blink_timer);

	/* Restore the original value of the bcrs */
	FUNC6(&lp->lock, flags);
	for (i = 4; i < 8; i++) {
		a->write_bcr(ioaddr, i, regs[i - 4]);
	}
	FUNC7(&lp->lock, flags);

	return 0;
}