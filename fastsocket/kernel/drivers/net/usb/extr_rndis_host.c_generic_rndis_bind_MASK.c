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
typedef  scalar_t__ u32 ;
struct usbnet {scalar_t__ hard_mtu; int maxpacket; int rx_urb_size; TYPE_1__* driver_info; int /*<<< orphan*/  out; int /*<<< orphan*/  udev; int /*<<< orphan*/  data; struct net_device* net; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct rndis_set_c {int dummy; } ;
struct rndis_set {void* msg_len; int /*<<< orphan*/  msg_type; void* offset; void* len; int /*<<< orphan*/  oid; } ;
struct rndis_query_c {int dummy; } ;
struct rndis_query {int dummy; } ;
typedef  void rndis_msg_hdr ;
struct rndis_init_c {int /*<<< orphan*/  packet_alignment; int /*<<< orphan*/  max_transfer_size; } ;
struct rndis_init {void* max_transfer_size; void* minor_version; void* major_version; void* msg_len; int /*<<< orphan*/  msg_type; } ;
struct rndis_halt {void* msg_len; int /*<<< orphan*/  msg_type; void* offset; void* len; int /*<<< orphan*/  oid; } ;
struct rndis_data_hdr {int dummy; } ;
struct net_device {scalar_t__ hard_header_len; scalar_t__ mtu; int /*<<< orphan*/  perm_addr; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * netdev_ops; } ;
struct cdc_state {int /*<<< orphan*/ * data; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_2__ {scalar_t__ (* early_init ) (struct usbnet*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CONTROL_BUFFER_SIZE ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ETH_ALEN ; 
 int FLAG_RNDIS_PHYM_NOT_WIRELESS ; 
 int FLAG_RNDIS_PHYM_WIRELESS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  OID_802_3_PERMANENT_ADDRESS ; 
 int /*<<< orphan*/  OID_GEN_CURRENT_PACKET_FILTER ; 
 int /*<<< orphan*/  OID_GEN_PHYSICAL_MEDIUM ; 
 scalar_t__ RNDIS_DEFAULT_FILTER ; 
 int /*<<< orphan*/  RNDIS_MSG_HALT ; 
 int /*<<< orphan*/  RNDIS_MSG_INIT ; 
 int /*<<< orphan*/  RNDIS_MSG_SET ; 
 scalar_t__ RNDIS_PHYSICAL_MEDIUM_UNSPECIFIED ; 
 scalar_t__ RNDIS_PHYSICAL_MEDIUM_WIRELESS_LAN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rndis_set*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct usbnet*) ; 
 int FUNC11 (struct usbnet*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rndis_netdev_ops ; 
 int FUNC12 (struct usbnet*,struct usb_interface*,void*,int /*<<< orphan*/ ,int,void**,int*) ; 
 scalar_t__ FUNC13 (struct usbnet*) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct usbnet*,struct usb_interface*) ; 

int
FUNC19(struct usbnet *dev, struct usb_interface *intf, int flags)
{
	int			retval;
	struct net_device	*net = dev->net;
	struct cdc_state	*info = (void *) &dev->data;
	union {
		void			*buf;
		struct rndis_msg_hdr	*header;
		struct rndis_init	*init;
		struct rndis_init_c	*init_c;
		struct rndis_query	*get;
		struct rndis_query_c	*get_c;
		struct rndis_set	*set;
		struct rndis_set_c	*set_c;
		struct rndis_halt	*halt;
	} u;
	u32			tmp;
	__le32			phym_unspec, *phym;
	int			reply_len;
	unsigned char		*bp;

	/* we can't rely on i/o from stack working, or stack allocation */
	u.buf = FUNC6(CONTROL_BUFFER_SIZE, GFP_KERNEL);
	if (!u.buf)
		return -ENOMEM;
	retval = FUNC18(dev, intf);
	if (retval < 0)
		goto fail;

	u.init->msg_type = RNDIS_MSG_INIT;
	u.init->msg_len = FUNC0(sizeof *u.init);
	u.init->major_version = FUNC0(1);
	u.init->minor_version = FUNC0(0);

	/* max transfer (in spec) is 0x4000 at full speed, but for
	 * TX we'll stick to one Ethernet packet plus RNDIS framing.
	 * For RX we handle drivers that zero-pad to end-of-packet.
	 * Don't let userspace change these settings.
	 *
	 * NOTE: there still seems to be wierdness here, as if we need
	 * to do some more things to make sure WinCE targets accept this.
	 * They default to jumbograms of 8KB or 16KB, which is absurd
	 * for such low data rates and which is also more than Linux
	 * can usually expect to allocate for SKB data...
	 */
	net->hard_header_len += sizeof (struct rndis_data_hdr);
	dev->hard_mtu = net->mtu + net->hard_header_len;

	dev->maxpacket = FUNC16(dev->udev, dev->out, 1);
	if (dev->maxpacket == 0) {
		if (FUNC10(dev))
			FUNC1(&intf->dev, "dev->maxpacket can't be 0\n");
		retval = -EINVAL;
		goto fail_and_release;
	}

	dev->rx_urb_size = dev->hard_mtu + (dev->maxpacket + 1);
	dev->rx_urb_size &= ~(dev->maxpacket - 1);
	u.init->max_transfer_size = FUNC0(dev->rx_urb_size);

	net->netdev_ops = &rndis_netdev_ops;

	retval = FUNC11(dev, u.header, CONTROL_BUFFER_SIZE);
	if (FUNC14(retval < 0)) {
		/* it might not even be an RNDIS device!! */
		FUNC2(&intf->dev, "RNDIS init failed, %d\n", retval);
		goto fail_and_release;
	}
	tmp = FUNC7(u.init_c->max_transfer_size);
	if (tmp < dev->hard_mtu) {
		if (tmp <= net->hard_header_len) {
			FUNC2(&intf->dev,
				"dev can't take %u byte packets (max %u)\n",
				dev->hard_mtu, tmp);
			retval = -EINVAL;
			goto halt_fail_and_release;
		}
		FUNC3(&intf->dev,
			 "dev can't take %u byte packets (max %u), "
			 "adjusting MTU to %u\n",
			 dev->hard_mtu, tmp, tmp - net->hard_header_len);
		dev->hard_mtu = tmp;
		net->mtu = dev->hard_mtu - net->hard_header_len;
	}

	/* REVISIT:  peripheral "alignment" request is ignored ... */
	FUNC1(&intf->dev,
		"hard mtu %u (%u from dev), rx buflen %Zu, align %d\n",
		dev->hard_mtu, tmp, dev->rx_urb_size,
		1 << FUNC7(u.init_c->packet_alignment));

	/* module has some device initialization code needs to be done right
	 * after RNDIS_INIT */
	if (dev->driver_info->early_init &&
			dev->driver_info->early_init(dev) != 0)
		goto halt_fail_and_release;

	/* Check physical medium */
	phym = NULL;
	reply_len = sizeof *phym;
	retval = FUNC12(dev, intf, u.buf, OID_GEN_PHYSICAL_MEDIUM,
			0, (void **) &phym, &reply_len);
	if (retval != 0 || !phym) {
		/* OID is optional so don't fail here. */
		phym_unspec = RNDIS_PHYSICAL_MEDIUM_UNSPECIFIED;
		phym = &phym_unspec;
	}
	if ((flags & FLAG_RNDIS_PHYM_WIRELESS) &&
			*phym != RNDIS_PHYSICAL_MEDIUM_WIRELESS_LAN) {
		if (FUNC10(dev))
			FUNC1(&intf->dev, "driver requires wireless "
				"physical medium, but device is not.\n");
		retval = -ENODEV;
		goto halt_fail_and_release;
	}
	if ((flags & FLAG_RNDIS_PHYM_NOT_WIRELESS) &&
			*phym == RNDIS_PHYSICAL_MEDIUM_WIRELESS_LAN) {
		if (FUNC10(dev))
			FUNC1(&intf->dev, "driver requires non-wireless "
				"physical medium, but device is wireless.\n");
		retval = -ENODEV;
		goto halt_fail_and_release;
	}

	/* Get designated host ethernet address */
	reply_len = ETH_ALEN;
	retval = FUNC12(dev, intf, u.buf, OID_802_3_PERMANENT_ADDRESS,
			48, (void **) &bp, &reply_len);
	if (FUNC14(retval< 0)) {
		FUNC2(&intf->dev, "rndis get ethaddr, %d\n", retval);
		goto halt_fail_and_release;
	}
	FUNC8(net->dev_addr, bp, ETH_ALEN);
	FUNC8(net->perm_addr, bp, ETH_ALEN);

	/* set a nonzero filter to enable data transfers */
	FUNC9(u.set, 0, sizeof *u.set);
	u.set->msg_type = RNDIS_MSG_SET;
	u.set->msg_len = FUNC0(4 + sizeof *u.set);
	u.set->oid = OID_GEN_CURRENT_PACKET_FILTER;
	u.set->len = FUNC0(4);
	u.set->offset = FUNC0((sizeof *u.set) - 8);
	*(__le32 *)(u.buf + sizeof *u.set) = RNDIS_DEFAULT_FILTER;

	retval = FUNC11(dev, u.header, CONTROL_BUFFER_SIZE);
	if (FUNC14(retval < 0)) {
		FUNC2(&intf->dev, "rndis set packet filter, %d\n", retval);
		goto halt_fail_and_release;
	}

	retval = 0;

	FUNC5(u.buf);
	return retval;

halt_fail_and_release:
	FUNC9(u.halt, 0, sizeof *u.halt);
	u.halt->msg_type = RNDIS_MSG_HALT;
	u.halt->msg_len = FUNC0(sizeof *u.halt);
	(void) FUNC11(dev, (void *)u.halt, CONTROL_BUFFER_SIZE);
fail_and_release:
	FUNC17(info->data, NULL);
	FUNC15(FUNC4(intf), info->data);
	info->data = NULL;
fail:
	FUNC5(u.buf);
	return retval;
}