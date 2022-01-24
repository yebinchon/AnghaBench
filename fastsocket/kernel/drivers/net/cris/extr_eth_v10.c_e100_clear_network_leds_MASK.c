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
struct net_local {int /*<<< orphan*/  led_lock; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ NET_FLASH_PAUSE ; 
 int /*<<< orphan*/  NO_NETWORK_ACTIVITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 scalar_t__ led_active ; 
 scalar_t__ led_next_time ; 
 struct net_local* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(unsigned long dummy)
{
	struct net_device *dev = (struct net_device *)dummy;
	struct net_local *np = FUNC1(dev);

	FUNC2(&np->led_lock);

	if (led_active && FUNC4(jiffies, led_next_time)) {
		FUNC0(NO_NETWORK_ACTIVITY);

		/* Set the earliest time we may set the LED */
		led_next_time = jiffies + NET_FLASH_PAUSE;
		led_active = 0;
	}

	FUNC3(&np->led_lock);
}