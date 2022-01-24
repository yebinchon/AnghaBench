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
struct TYPE_2__ {scalar_t__ expires; } ;
struct pmac_i2c_host_kw {scalar_t__ state; int /*<<< orphan*/  lock; TYPE_1__ timeout_timer; } ;

/* Variables and functions */
 scalar_t__ KW_POLL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct pmac_i2c_host_kw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  reg_isr ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ state_idle ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct pmac_i2c_host_kw *host = (struct pmac_i2c_host_kw *)data;
	unsigned long flags;

	FUNC3(&host->lock, flags);
	FUNC1(host, FUNC2(reg_isr));
	if (host->state != state_idle) {
		host->timeout_timer.expires = jiffies + KW_POLL_TIMEOUT;
		FUNC0(&host->timeout_timer);
	}
	FUNC4(&host->lock, flags);
}