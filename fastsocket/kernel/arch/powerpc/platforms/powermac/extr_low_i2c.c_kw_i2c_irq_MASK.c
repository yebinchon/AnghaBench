#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;
struct pmac_i2c_host_kw {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_1__ timeout_timer; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ KW_POLL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct pmac_i2c_host_kw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_isr ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ state_idle ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct pmac_i2c_host_kw *host = dev_id;
	unsigned long flags;

	FUNC4(&host->lock, flags);
	FUNC1(&host->timeout_timer);
	FUNC2(host, FUNC3(reg_isr));
	if (host->state != state_idle) {
		host->timeout_timer.expires = jiffies + KW_POLL_TIMEOUT;
		FUNC0(&host->timeout_timer);
	}
	FUNC5(&host->lock, flags);
	return IRQ_HANDLED;
}