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
struct net_device {int dummy; } ;
struct at91_private {int /*<<< orphan*/  check_timer; } ;

/* Variables and functions */
 scalar_t__ LINK_POLL_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct at91_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 

__attribute__((used)) static void FUNC5(unsigned long dev_id)
{
	struct net_device *dev = (struct net_device *) dev_id;
	struct at91_private *lp = FUNC3(dev);

	FUNC1();
	FUNC4(dev, 1);
	FUNC0();

	FUNC2(&lp->check_timer, jiffies + LINK_POLL_INTERVAL);
}