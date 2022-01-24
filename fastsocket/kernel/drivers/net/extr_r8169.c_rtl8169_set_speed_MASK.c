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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct rtl8169_private {int (* set_speed ) (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  timer; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ADVERTISED_1000baseT_Full ; 
 int /*<<< orphan*/  AUTONEG_ENABLE ; 
 scalar_t__ RTL8169_PHY_TIMEOUT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct rtl8169_private* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
			     u8 autoneg, u16 speed, u8 duplex, u32 advertising)
{
	struct rtl8169_private *tp = FUNC1(dev);
	int ret;

	ret = tp->set_speed(dev, autoneg, speed, duplex, advertising);
	if (ret < 0)
		goto out;

	if (FUNC2(dev) && (autoneg == AUTONEG_ENABLE) &&
	    (advertising & ADVERTISED_1000baseT_Full)) {
		FUNC0(&tp->timer, jiffies + RTL8169_PHY_TIMEOUT);
	}
out:
	return ret;
}