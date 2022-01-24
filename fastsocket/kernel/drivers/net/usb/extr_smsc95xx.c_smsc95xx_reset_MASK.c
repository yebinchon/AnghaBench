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
typedef  int /*<<< orphan*/  ulong ;
typedef  int u32 ;
struct usbnet {int rx_urb_size; struct net_device* net; TYPE_1__* udev; scalar_t__* data; } ;
struct smsc95xx_priv {int mac_cr; int /*<<< orphan*/  use_tx_csum; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_2__ {scalar_t__ speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFC_CFG ; 
 int AFC_CFG_DEFAULT ; 
 int /*<<< orphan*/  BULK_IN_DLY ; 
 int /*<<< orphan*/  BURST_CAP ; 
 int DEFAULT_BULK_IN_DELAY ; 
 int DEFAULT_FS_BURST_CAP_SIZE ; 
 int DEFAULT_HS_BURST_CAP_SIZE ; 
 int EIO ; 
 scalar_t__ ETH_P_8021Q ; 
 int /*<<< orphan*/  FLOW ; 
 int FS_USB_PKT_SIZE ; 
 int HS_USB_PKT_SIZE ; 
 int /*<<< orphan*/  HW_CFG ; 
 int HW_CFG_BCE_ ; 
 int HW_CFG_BIR_ ; 
 int HW_CFG_LRST_ ; 
 int HW_CFG_MEF_ ; 
 int HW_CFG_RXDOFF_ ; 
 int /*<<< orphan*/  ID_REV ; 
 int /*<<< orphan*/  INT_EP_CTL ; 
 int INT_EP_CTL_PHY_INT_ ; 
 int /*<<< orphan*/  INT_STS ; 
 int /*<<< orphan*/  LED_GPIO_CFG ; 
 int LED_GPIO_CFG_FDX_LED ; 
 int LED_GPIO_CFG_LNK_LED ; 
 int LED_GPIO_CFG_SPD_LED ; 
 int /*<<< orphan*/  MAC_CR ; 
 int MAX_SINGLE_PACKET_SIZE ; 
 int NET_IP_ALIGN ; 
 int PM_CTL_PHY_RST_ ; 
 int /*<<< orphan*/  PM_CTRL ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  VLAN1 ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbnet*) ; 
 scalar_t__ FUNC6 (struct usbnet*) ; 
 int FUNC7 (struct usbnet*,int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (struct usbnet*) ; 
 int FUNC9 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct usbnet*) ; 
 int FUNC13 (struct usbnet*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ turbo_mode ; 

__attribute__((used)) static int FUNC14(struct usbnet *dev)
{
	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
	struct net_device *netdev = dev->net;
	u32 read_buf, write_buf, burst_cap;
	int ret = 0, timeout;

	if (FUNC4(dev))
		FUNC0(dev, "entering smsc95xx_reset");

	write_buf = HW_CFG_LRST_;
	ret = FUNC13(dev, HW_CFG, write_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to write HW_CFG_LRST_ bit in HW_CFG "
			"register, ret = %d", ret);
		return ret;
	}

	timeout = 0;
	do {
		ret = FUNC7(dev, HW_CFG, &read_buf);
		if (ret < 0) {
			FUNC1(dev, "Failed to read HW_CFG: %d", ret);
			return ret;
		}
		FUNC3(10);
		timeout++;
	} while ((read_buf & HW_CFG_LRST_) && (timeout < 100));

	if (timeout >= 100) {
		FUNC1(dev, "timeout waiting for completion of Lite Reset");
		return ret;
	}

	write_buf = PM_CTL_PHY_RST_;
	ret = FUNC13(dev, PM_CTRL, write_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to write PM_CTRL: %d", ret);
		return ret;
	}

	timeout = 0;
	do {
		ret = FUNC7(dev, PM_CTRL, &read_buf);
		if (ret < 0) {
			FUNC1(dev, "Failed to read PM_CTRL: %d", ret);
			return ret;
		}
		FUNC3(10);
		timeout++;
	} while ((read_buf & PM_CTL_PHY_RST_) && (timeout < 100));

	if (timeout >= 100) {
		FUNC1(dev, "timeout waiting for PHY Reset");
		return ret;
	}

	FUNC5(dev);

	ret = FUNC9(dev);
	if (ret < 0)
		return ret;

	if (FUNC4(dev))
		FUNC0(dev, "MAC Address: %pM", dev->net->dev_addr);

	ret = FUNC7(dev, HW_CFG, &read_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to read HW_CFG: %d", ret);
		return ret;
	}

	if (FUNC4(dev))
		FUNC0(dev, "Read Value from HW_CFG : 0x%08x", read_buf);

	read_buf |= HW_CFG_BIR_;

	ret = FUNC13(dev, HW_CFG, read_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to write HW_CFG_BIR_ bit in HW_CFG "
			"register, ret = %d", ret);
		return ret;
	}

	ret = FUNC7(dev, HW_CFG, &read_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to read HW_CFG: %d", ret);
		return ret;
	}
	if (FUNC4(dev))
		FUNC0(dev, "Read Value from HW_CFG after writing "
			"HW_CFG_BIR_: 0x%08x", read_buf);

	if (!turbo_mode) {
		burst_cap = 0;
		dev->rx_urb_size = MAX_SINGLE_PACKET_SIZE;
	} else if (dev->udev->speed == USB_SPEED_HIGH) {
		burst_cap = DEFAULT_HS_BURST_CAP_SIZE / HS_USB_PKT_SIZE;
		dev->rx_urb_size = DEFAULT_HS_BURST_CAP_SIZE;
	} else {
		burst_cap = DEFAULT_FS_BURST_CAP_SIZE / FS_USB_PKT_SIZE;
		dev->rx_urb_size = DEFAULT_FS_BURST_CAP_SIZE;
	}

	if (FUNC4(dev))
		FUNC0(dev, "rx_urb_size=%ld", (ulong)dev->rx_urb_size);

	ret = FUNC13(dev, BURST_CAP, burst_cap);
	if (ret < 0) {
		FUNC1(dev, "Failed to write BURST_CAP: %d", ret);
		return ret;
	}

	ret = FUNC7(dev, BURST_CAP, &read_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to read BURST_CAP: %d", ret);
		return ret;
	}
	if (FUNC4(dev))
		FUNC0(dev, "Read Value from BURST_CAP after writing: 0x%08x",
			read_buf);

	read_buf = DEFAULT_BULK_IN_DELAY;
	ret = FUNC13(dev, BULK_IN_DLY, read_buf);
	if (ret < 0) {
		FUNC1(dev, "ret = %d", ret);
		return ret;
	}

	ret = FUNC7(dev, BULK_IN_DLY, &read_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to read BULK_IN_DLY: %d", ret);
		return ret;
	}
	if (FUNC4(dev))
		FUNC0(dev, "Read Value from BULK_IN_DLY after writing: "
			"0x%08x", read_buf);

	ret = FUNC7(dev, HW_CFG, &read_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to read HW_CFG: %d", ret);
		return ret;
	}
	if (FUNC4(dev))
		FUNC0(dev, "Read Value from HW_CFG: 0x%08x", read_buf);

	if (turbo_mode)
		read_buf |= (HW_CFG_MEF_ | HW_CFG_BCE_);

	read_buf &= ~HW_CFG_RXDOFF_;

	/* set Rx data offset=2, Make IP header aligns on word boundary. */
	read_buf |= NET_IP_ALIGN << 9;

	ret = FUNC13(dev, HW_CFG, read_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to write HW_CFG register, ret=%d", ret);
		return ret;
	}

	ret = FUNC7(dev, HW_CFG, &read_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to read HW_CFG: %d", ret);
		return ret;
	}
	if (FUNC4(dev))
		FUNC0(dev, "Read Value from HW_CFG after writing: 0x%08x",
			read_buf);

	write_buf = 0xFFFFFFFF;
	ret = FUNC13(dev, INT_STS, write_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to write INT_STS register, ret=%d", ret);
		return ret;
	}

	ret = FUNC7(dev, ID_REV, &read_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to read ID_REV: %d", ret);
		return ret;
	}
	if (FUNC4(dev))
		FUNC0(dev, "ID_REV = 0x%08x", read_buf);

	/* Configure GPIO pins as LED outputs */
	write_buf = LED_GPIO_CFG_SPD_LED | LED_GPIO_CFG_LNK_LED |
		LED_GPIO_CFG_FDX_LED;
	ret = FUNC13(dev, LED_GPIO_CFG, write_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to write LED_GPIO_CFG register, ret=%d",
			ret);
		return ret;
	}

	/* Init Tx */
	write_buf = 0;
	ret = FUNC13(dev, FLOW, write_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to write FLOW: %d", ret);
		return ret;
	}

	read_buf = AFC_CFG_DEFAULT;
	ret = FUNC13(dev, AFC_CFG, read_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to write AFC_CFG: %d", ret);
		return ret;
	}

	/* Don't need mac_cr_lock during initialisation */
	ret = FUNC7(dev, MAC_CR, &pdata->mac_cr);
	if (ret < 0) {
		FUNC1(dev, "Failed to read MAC_CR: %d", ret);
		return ret;
	}

	/* Init Rx */
	/* Set Vlan */
	write_buf = (u32)ETH_P_8021Q;
	ret = FUNC13(dev, VLAN1, write_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to write VAN1: %d", ret);
		return ret;
	}

	/* Enable or disable checksum offload engines */
	FUNC2(netdev, pdata->use_tx_csum);
	ret = FUNC8(dev);
	if (ret < 0) {
		FUNC1(dev, "Failed to set csum offload: %d", ret);
		return ret;
	}

	FUNC10(dev->net);

	if (FUNC6(dev) < 0)
		return -EIO;

	ret = FUNC7(dev, INT_EP_CTL, &read_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to read INT_EP_CTL: %d", ret);
		return ret;
	}

	/* enable PHY interrupts */
	read_buf |= INT_EP_CTL_PHY_INT_;

	ret = FUNC13(dev, INT_EP_CTL, read_buf);
	if (ret < 0) {
		FUNC1(dev, "Failed to write INT_EP_CTL: %d", ret);
		return ret;
	}

	FUNC12(dev);
	FUNC11(dev);

	if (FUNC4(dev))
		FUNC0(dev, "smsc95xx_reset, return 0");
	return 0;
}