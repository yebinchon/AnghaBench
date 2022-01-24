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
struct zd1201 {int endp_in; int endp_out; int endp_out2; void* rx_urb; void* tx_urb; scalar_t__ ap; int /*<<< orphan*/  fraglist; int /*<<< orphan*/  rxdataq; scalar_t__ removed; struct usb_device* usb; struct net_device* dev; } ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  watchdog_timeo; int /*<<< orphan*/ * wireless_handlers; int /*<<< orphan*/ * netdev_ops; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ZD1201_CMDCODE_INIT ; 
 short ZD1201_PORTTYPE_AP ; 
 short ZD1201_PORTTYPE_BSS ; 
 short ZD1201_RATEB1 ; 
 short ZD1201_RATEB11 ; 
 short ZD1201_RATEB2 ; 
 short ZD1201_RATEB5 ; 
 int /*<<< orphan*/  ZD1201_RID_CNFDESIREDSSID ; 
 int /*<<< orphan*/  ZD1201_RID_CNFMAXDATALEN ; 
 int /*<<< orphan*/  ZD1201_RID_CNFOWNMACADDR ; 
 int /*<<< orphan*/  ZD1201_RID_CNFPORTTYPE ; 
 int /*<<< orphan*/  ZD1201_RID_TXRATECNTL ; 
 int /*<<< orphan*/  ZD1201_TX_TIMEOUT ; 
 struct net_device* FUNC2 (int) ; 
 scalar_t__ ap ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 struct zd1201* FUNC10 (struct net_device*) ; 
 int FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (void*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_interface*,struct zd1201*) ; 
 int /*<<< orphan*/  FUNC16 (struct zd1201*) ; 
 int /*<<< orphan*/  FUNC17 (struct zd1201*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct zd1201*) ; 
 int /*<<< orphan*/  FUNC19 (struct zd1201*) ; 
 int FUNC20 (struct usb_device*,scalar_t__) ; 
 int FUNC21 (struct zd1201*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  zd1201_iw_handlers ; 
 int /*<<< orphan*/  zd1201_netdev_ops ; 
 int FUNC22 (struct zd1201*,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC23 (struct zd1201*,int /*<<< orphan*/ ,short) ; 

__attribute__((used)) static int FUNC24(struct usb_interface *interface,
			const struct usb_device_id *id)
{
	struct zd1201 *zd;
	struct net_device *dev;
	struct usb_device *usb;
	int err;
	short porttype;
	char buf[IW_ESSID_MAX_SIZE+2];

	usb = FUNC8(interface);

	dev = FUNC2(sizeof(*zd));
	if (!dev)
		return -ENOMEM;
	zd = FUNC10(dev);
	zd->dev = dev;

	zd->ap = ap;
	zd->usb = usb;
	zd->removed = 0;
	FUNC7(&zd->rxdataq);
	FUNC0(&zd->fraglist);
	
	err = FUNC20(usb, zd->ap);
	if (err) {
		FUNC4(&usb->dev, "zd1201 firmware upload failed: %d\n", err);
		goto err_zd;
	}
	
	zd->endp_in = 1;
	zd->endp_out = 1;
	zd->endp_out2 = 2;
	zd->rx_urb = FUNC13(0, GFP_KERNEL);
	zd->tx_urb = FUNC13(0, GFP_KERNEL);
	if (!zd->rx_urb || !zd->tx_urb)
		goto err_zd;

	FUNC9(100);
	err = FUNC18(zd);
	if (err)
		goto err_zd;

	err = FUNC23(zd, ZD1201_RID_CNFMAXDATALEN, 2312);
	if (err)
		goto err_start;

	err = FUNC23(zd, ZD1201_RID_TXRATECNTL,
	    ZD1201_RATEB1 | ZD1201_RATEB2 | ZD1201_RATEB5 | ZD1201_RATEB11);
	if (err)
		goto err_start;

	dev->netdev_ops = &zd1201_netdev_ops;
	dev->wireless_handlers = &zd1201_iw_handlers;
	dev->watchdog_timeo = ZD1201_TX_TIMEOUT;
	FUNC12(dev->name, "wlan%d");

	err = FUNC21(zd, ZD1201_RID_CNFOWNMACADDR, 
	    dev->dev_addr, dev->addr_len);
	if (err)
		goto err_start;

	/* Set wildcard essid to match zd->essid */
	*(__le16 *)buf = FUNC3(0);
	err = FUNC22(zd, ZD1201_RID_CNFDESIREDSSID, buf,
	    IW_ESSID_MAX_SIZE+2, 1);
	if (err)
		goto err_start;

	if (zd->ap)
		porttype = ZD1201_PORTTYPE_AP;
	else
		porttype = ZD1201_PORTTYPE_BSS;
	err = FUNC23(zd, ZD1201_RID_CNFPORTTYPE, porttype);
	if (err)
		goto err_start;

	FUNC1(dev, &usb->dev);

	err = FUNC11(dev);
	if (err)
		goto err_start;
	FUNC5(&usb->dev, "%s: ZD1201 USB Wireless interface\n",
	    dev->name);

	FUNC15(interface, zd);
	FUNC19(zd);	/* zd1201 likes to startup enabled, */
	FUNC16(zd);	/* interfering with all the wifis in range */
	return 0;

err_start:
	/* Leave the device in reset state */
	FUNC17(zd, ZD1201_CMDCODE_INIT, 0, 0, 0);
err_zd:
	FUNC14(zd->tx_urb);
	FUNC14(zd->rx_urb);
	FUNC6(dev);
	return err;
}