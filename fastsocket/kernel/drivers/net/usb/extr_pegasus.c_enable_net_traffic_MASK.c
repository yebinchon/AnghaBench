#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct usb_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {size_t dev_index; int /*<<< orphan*/  eth_regs; int /*<<< orphan*/  phy; } ;
typedef  TYPE_1__ pegasus_t ;
typedef  int /*<<< orphan*/  data ;
typedef  int __u8 ;
typedef  int __u16 ;
struct TYPE_8__ {scalar_t__ vendor; } ;

/* Variables and functions */
 int ADVERTISE_100FULL ; 
 int ADVERTISE_100HALF ; 
 int ADVERTISE_10FULL ; 
 int /*<<< orphan*/  EthCtrl0 ; 
 int MII_LPA ; 
 scalar_t__ VENDOR_DLINK ; 
 scalar_t__ VENDOR_LINKSYS ; 
 scalar_t__ VENDOR_LINKSYS2 ; 
 int loopback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ mii_mode ; 
 TYPE_1__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int*) ; 
 TYPE_3__* usb_dev_id ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct usb_device *usb)
{
	__u16 linkpart;
	__u8 data[4];
	pegasus_t *pegasus = FUNC1(dev);
	int ret;

	FUNC2(pegasus, pegasus->phy, MII_LPA, &linkpart);
	data[0] = 0xc9;
	data[1] = 0;
	if (linkpart & (ADVERTISE_100FULL | ADVERTISE_10FULL))
		data[1] |= 0x20;	/* set full duplex */
	if (linkpart & (ADVERTISE_100FULL | ADVERTISE_100HALF))
		data[1] |= 0x10;	/* set 100 Mbps */
	if (mii_mode)
		data[1] = 0;
	data[2] = (loopback & 1) ? 0x09 : 0x01;

	FUNC0(pegasus->eth_regs, data, sizeof (data));
	ret = FUNC3(pegasus, EthCtrl0, 3, data);

	if (usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS ||
	    usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS2 ||
	    usb_dev_id[pegasus->dev_index].vendor == VENDOR_DLINK) {
		u16 auxmode;
		FUNC2(pegasus, 0, 0x1b, &auxmode);
		FUNC4(pegasus, 0, 0x1b, auxmode | 4);
	}

	return ret;
}