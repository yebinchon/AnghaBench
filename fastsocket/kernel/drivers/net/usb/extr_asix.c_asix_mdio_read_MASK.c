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
 int /*<<< orphan*/  AX_CMD_READ_MII_REG ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,char*,int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct usbnet* FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev, int phy_id, int loc)
{
	struct usbnet *dev = FUNC7(netdev);
	__le16 res;

	FUNC5(&dev->phy_mutex);
	FUNC2(dev);
	FUNC0(dev, AX_CMD_READ_MII_REG, phy_id,
				(__u16)loc, 2, &res);
	FUNC1(dev);
	FUNC6(&dev->phy_mutex);

	FUNC3(dev, "asix_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x", phy_id, loc, FUNC4(res));

	return FUNC4(res);
}