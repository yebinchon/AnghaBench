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
struct bfin_twi_iface {int result; scalar_t__ timeout_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; TYPE_1__ timeout_timer; } ;

/* Variables and functions */
 scalar_t__ POLL_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct bfin_twi_iface*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct bfin_twi_iface *iface = (struct bfin_twi_iface *)data;
	unsigned long flags;

	FUNC3(&iface->lock, flags);
	FUNC1(iface);
	if (iface->result == 0) {
		iface->timeout_count--;
		if (iface->timeout_count > 0) {
			iface->timeout_timer.expires = jiffies + POLL_TIMEOUT;
			FUNC0(&iface->timeout_timer);
		} else {
			iface->result = -1;
			FUNC2(&iface->complete);
		}
	}
	FUNC4(&iface->lock, flags);
}