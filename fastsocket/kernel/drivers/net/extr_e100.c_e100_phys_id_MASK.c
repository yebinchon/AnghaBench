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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  phy_id; } ;
struct nic {scalar_t__ phy; TYPE_1__ mii; int /*<<< orphan*/  blink_timer; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E100_82552_LED_OVERRIDE ; 
 int HZ ; 
 int MAX_SCHEDULE_TIMEOUT ; 
 int /*<<< orphan*/  MII_LED_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct nic* FUNC4 (struct net_device*) ; 
 scalar_t__ phy_82552_v ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, u32 data)
{
	struct nic *nic = FUNC4(netdev);
	u16 led_reg = (nic->phy == phy_82552_v) ? E100_82552_LED_OVERRIDE :
	              MII_LED_CONTROL;

	if (!data || data > (u32)(MAX_SCHEDULE_TIMEOUT / HZ))
		data = (u32)(MAX_SCHEDULE_TIMEOUT / HZ);
	FUNC2(&nic->blink_timer, jiffies);
	FUNC3(data * 1000);
	FUNC0(&nic->blink_timer);
	FUNC1(netdev, nic->mii.phy_id, led_reg, 0);

	return 0;
}