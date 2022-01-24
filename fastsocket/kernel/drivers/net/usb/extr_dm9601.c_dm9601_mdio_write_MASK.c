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
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,int,int,int /*<<< orphan*/ ) ; 
 struct usbnet* FUNC3 (struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct net_device *netdev, int phy_id, int loc,
			      int val)
{
	struct usbnet *dev = FUNC3(netdev);
	__le16 res = FUNC0(val);

	if (phy_id) {
		FUNC1(dev, "Only internal phy supported");
		return;
	}

	FUNC1(dev,"dm9601_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x",
	       phy_id, loc, val);

	FUNC2(dev, 1, loc, res);
}