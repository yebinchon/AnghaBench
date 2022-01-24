#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int phy_id_mask; int reg_num_mask; int /*<<< orphan*/  phy_id; int /*<<< orphan*/  (* mdio_write ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  mdio_read; TYPE_3__* dev; } ;
struct usbnet {int /*<<< orphan*/  driver_priv; TYPE_2__ mii; TYPE_3__* net; int /*<<< orphan*/  data; TYPE_1__* driver_info; } ;
struct usb_interface {int dummy; } ;
struct asix_data {int /*<<< orphan*/  eeprom_len; } ;
struct asix_common_private {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_4__ {unsigned long data; } ;

/* Variables and functions */
 int ADVERTISE_ALL ; 
 int ADVERTISE_CSMA ; 
 int ADVERTISE_PAUSE_CAP ; 
 int /*<<< orphan*/  AX88172_CMD_READ_NODE_ID ; 
 int /*<<< orphan*/  AX88172_EEPROM_LEN ; 
 int /*<<< orphan*/  AX_CMD_WRITE_GPIOS ; 
 int BMCR_RESET ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  asix_mdio_read ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct usbnet*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct usbnet*,int) ; 
 int /*<<< orphan*/  ax88172_ethtool_ops ; 
 int /*<<< orphan*/  ax88172_netdev_ops ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct usbnet*,struct usb_interface*) ; 

__attribute__((used)) static int FUNC11(struct usbnet *dev, struct usb_interface *intf)
{
	int ret = 0;
	u8 buf[ETH_ALEN];
	int i;
	unsigned long gpio_bits = dev->driver_info->data;
	struct asix_data *data = (struct asix_data *)&dev->data;

	data->eeprom_len = AX88172_EEPROM_LEN;

	FUNC10(dev,intf);

	/* Toggle the GPIOs in a manufacturer/model specific way */
	for (i = 2; i >= 0; i--) {
		if ((ret = FUNC3(dev, AX_CMD_WRITE_GPIOS,
					(gpio_bits >> (i * 8)) & 0xff, 0, 0,
					NULL)) < 0)
			goto out;
		FUNC9(5);
	}

	if ((ret = FUNC4(dev, 0x80)) < 0)
		goto out;

	/* Get the MAC address */
	if ((ret = FUNC2(dev, AX88172_CMD_READ_NODE_ID,
				0, 0, ETH_ALEN, buf)) < 0) {
		FUNC5("read AX_CMD_READ_NODE_ID failed: %d", ret);
		goto out;
	}
	FUNC7(dev->net->dev_addr, buf, ETH_ALEN);

	/* Initialize MII structure */
	dev->mii.dev = dev->net;
	dev->mii.mdio_read = asix_mdio_read;
	dev->mii.mdio_write = asix_mdio_write;
	dev->mii.phy_id_mask = 0x3f;
	dev->mii.reg_num_mask = 0x1f;
	dev->mii.phy_id = FUNC0(dev);

	dev->net->netdev_ops = &ax88172_netdev_ops;
	dev->net->ethtool_ops = &ax88172_ethtool_ops;

	FUNC1(dev->net, dev->mii.phy_id, MII_BMCR, BMCR_RESET);
	FUNC1(dev->net, dev->mii.phy_id, MII_ADVERTISE,
		ADVERTISE_ALL | ADVERTISE_CSMA | ADVERTISE_PAUSE_CAP);
	FUNC8(&dev->mii);

	dev->driver_priv = FUNC6(sizeof(struct asix_common_private), GFP_KERNEL);
	if (!dev->driver_priv)
		return -ENOMEM;

	return 0;

out:
	return ret;
}