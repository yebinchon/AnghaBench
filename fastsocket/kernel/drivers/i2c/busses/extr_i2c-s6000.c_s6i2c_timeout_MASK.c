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
struct s6i2c_if {scalar_t__ timeout_count; int /*<<< orphan*/  lock; int /*<<< orphan*/  complete; TYPE_1__ timeout_timer; } ;

/* Variables and functions */
 scalar_t__ POLL_TIMEOUT ; 
 int /*<<< orphan*/  S6_I2C_INTRMASK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct s6i2c_if*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct s6i2c_if*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct s6i2c_if *iface = (struct s6i2c_if *)data;
	unsigned long flags;

	FUNC4(&iface->lock, flags);
	FUNC3(iface);
	if (--iface->timeout_count > 0) {
		iface->timeout_timer.expires = jiffies + POLL_TIMEOUT;
		FUNC0(&iface->timeout_timer);
	} else {
		FUNC1(&iface->complete);
		FUNC2(iface, S6_I2C_INTRMASK, 0);
	}
	FUNC5(&iface->lock, flags);
}