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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_5__ {int phy_id_mask; int reg_num_mask; int phy_id; int /*<<< orphan*/  (* mdio_write ) (TYPE_3__*,int,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  mdio_read; TYPE_3__* dev; } ;
struct usbnet {int rx_urb_size; int /*<<< orphan*/  driver_priv; TYPE_1__* driver_info; TYPE_2__ mii; TYPE_3__* net; int /*<<< orphan*/  data; } ;
struct usb_interface {int dummy; } ;
struct asix_data {int /*<<< orphan*/  eeprom_len; } ;
struct asix_common_private {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ethtool_ops; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  dev_addr; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int ADVERTISE_ALL ; 
 int ADVERTISE_CSMA ; 
 int /*<<< orphan*/  AX88772_EEPROM_LEN ; 
 int AX88772_IPG0_DEFAULT ; 
 int AX88772_IPG1_DEFAULT ; 
 int /*<<< orphan*/  AX88772_IPG2_DEFAULT ; 
 int /*<<< orphan*/  AX88772_MEDIUM_DEFAULT ; 
 int /*<<< orphan*/  AX_CMD_READ_NODE_ID ; 
 int /*<<< orphan*/  AX_CMD_SW_PHY_SELECT ; 
 int /*<<< orphan*/  AX_CMD_WRITE_IPG0 ; 
 int AX_DEFAULT_RX_CTL ; 
 int AX_GPIO_GPO2EN ; 
 int AX_GPIO_GPO_2 ; 
 int AX_GPIO_RSE ; 
 int AX_SWRESET_CLEAR ; 
 int AX_SWRESET_IPPD ; 
 int AX_SWRESET_IPRL ; 
 int AX_SWRESET_PRL ; 
 int AX_SWRESET_PRTE ; 
 int BMCR_RESET ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int FLAG_FRAMING_AX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int FUNC0 (struct usbnet*) ; 
 int FUNC1 (struct usbnet*) ; 
 int /*<<< orphan*/  asix_mdio_read ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct usbnet*) ; 
 int FUNC5 (struct usbnet*) ; 
 int FUNC6 (struct usbnet*,int) ; 
 int FUNC7 (struct usbnet*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct usbnet*,int,int) ; 
 int FUNC9 (struct usbnet*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct usbnet*,int) ; 
 int /*<<< orphan*/  ax88772_ethtool_ops ; 
 int /*<<< orphan*/  ax88772_netdev_ops ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct usbnet*,struct usb_interface*) ; 

__attribute__((used)) static int FUNC17(struct usbnet *dev, struct usb_interface *intf)
{
	int ret, embd_phy;
	u16 rx_ctl;
	struct asix_data *data = (struct asix_data *)&dev->data;
	u8 buf[ETH_ALEN];
	u32 phyid;

	data->eeprom_len = AX88772_EEPROM_LEN;

	FUNC16(dev,intf);

	if ((ret = FUNC8(dev,
			AX_GPIO_RSE | AX_GPIO_GPO_2 | AX_GPIO_GPO2EN, 5)) < 0)
		goto out;

	/* 0x10 is the phy id of the embedded 10/100 ethernet phy */
	embd_phy = ((FUNC0(dev) & 0x1f) == 0x10 ? 1 : 0);
	if ((ret = FUNC7(dev, AX_CMD_SW_PHY_SELECT,
				embd_phy, 0, 0, NULL)) < 0) {
		FUNC11("Select PHY #1 failed: %d", ret);
		goto out;
	}

	if ((ret = FUNC6(dev, AX_SWRESET_IPPD | AX_SWRESET_PRL)) < 0)
		goto out;

	FUNC15(150);
	if ((ret = FUNC6(dev, AX_SWRESET_CLEAR)) < 0)
		goto out;

	FUNC15(150);
	if (embd_phy) {
		if ((ret = FUNC6(dev, AX_SWRESET_IPRL)) < 0)
			goto out;
	}
	else {
		if ((ret = FUNC6(dev, AX_SWRESET_PRTE)) < 0)
			goto out;
	}

	FUNC15(150);
	rx_ctl = FUNC5(dev);
	FUNC11("RX_CTL is 0x%04x after software reset", rx_ctl);
	if ((ret = FUNC10(dev, 0x0000)) < 0)
		goto out;

	rx_ctl = FUNC5(dev);
	FUNC11("RX_CTL is 0x%04x setting to 0x0000", rx_ctl);

	/* Get the MAC address */
	if ((ret = FUNC3(dev, AX_CMD_READ_NODE_ID,
				0, 0, ETH_ALEN, buf)) < 0) {
		FUNC11("Failed to read MAC address: %d", ret);
		goto out;
	}
	FUNC13(dev->net->dev_addr, buf, ETH_ALEN);

	/* Initialize MII structure */
	dev->mii.dev = dev->net;
	dev->mii.mdio_read = asix_mdio_read;
	dev->mii.mdio_write = asix_mdio_write;
	dev->mii.phy_id_mask = 0x1f;
	dev->mii.reg_num_mask = 0x1f;
	dev->mii.phy_id = FUNC0(dev);

	phyid = FUNC1(dev);
	FUNC11("PHYID=0x%08x", phyid);

	if ((ret = FUNC6(dev, AX_SWRESET_PRL)) < 0)
		goto out;

	FUNC15(150);

	if ((ret = FUNC6(dev, AX_SWRESET_IPRL | AX_SWRESET_PRL)) < 0)
		goto out;

	FUNC15(150);

	dev->net->netdev_ops = &ax88772_netdev_ops;
	dev->net->ethtool_ops = &ax88772_ethtool_ops;

	FUNC2(dev->net, dev->mii.phy_id, MII_BMCR, BMCR_RESET);
	FUNC2(dev->net, dev->mii.phy_id, MII_ADVERTISE,
			ADVERTISE_ALL | ADVERTISE_CSMA);
	FUNC14(&dev->mii);

	if ((ret = FUNC9(dev, AX88772_MEDIUM_DEFAULT)) < 0)
		goto out;

	if ((ret = FUNC7(dev, AX_CMD_WRITE_IPG0,
				AX88772_IPG0_DEFAULT | AX88772_IPG1_DEFAULT,
				AX88772_IPG2_DEFAULT, 0, NULL)) < 0) {
		FUNC11("Write IPG,IPG1,IPG2 failed: %d", ret);
		goto out;
	}

	/* Set RX_CTL to default values with 2k buffer, and enable cactus */
	if ((ret = FUNC10(dev, AX_DEFAULT_RX_CTL)) < 0)
		goto out;

	rx_ctl = FUNC5(dev);
	FUNC11("RX_CTL is 0x%04x after all initializations", rx_ctl);

	rx_ctl = FUNC4(dev);
	FUNC11("Medium Status is 0x%04x after all initializations", rx_ctl);

	/* Asix framing packs multiple eth frames into a 2K usb bulk transfer */
	if (dev->driver_info->flags & FLAG_FRAMING_AX) {
		/* hard_mtu  is still the default - the device does not support
		   jumbo eth frames */
		dev->rx_urb_size = 2048;
	}

	dev->driver_priv = FUNC12(sizeof(struct asix_common_private), GFP_KERNEL);
	if (!dev->driver_priv)
		return -ENOMEM;

	return 0;

out:
	return ret;
}