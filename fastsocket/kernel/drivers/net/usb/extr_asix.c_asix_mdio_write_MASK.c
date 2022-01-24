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
struct usbnet {int /*<<< orphan*/  phy_mutex; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CMD_WRITE_MII_REG ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct usbnet* FUNC7 (struct net_device*) ; 

__attribute__((used)) static void
FUNC8(struct net_device *netdev, int phy_id, int loc, int val)
{
	struct usbnet *dev = FUNC7(netdev);
	__le16 res = FUNC3(val);

	FUNC4(dev, "asix_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x", phy_id, loc, val);
	FUNC5(&dev->phy_mutex);
	FUNC1(dev);
	FUNC2(dev, AX_CMD_WRITE_MII_REG, phy_id, (__u16)loc, 2, &res);
	FUNC0(dev);
	FUNC6(&dev->phy_mutex);
}