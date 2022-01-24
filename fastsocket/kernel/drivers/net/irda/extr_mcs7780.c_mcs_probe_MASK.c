#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {TYPE_4__* cur_altsetting; int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int /*<<< orphan*/  devnum; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/ * netdev_ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  bits; } ;
struct TYPE_7__ {int bits; } ;
struct TYPE_11__ {TYPE_2__ min_turn_time; TYPE_1__ baud_rate; } ;
struct mcs_cb {int /*<<< orphan*/  receive_mode; int /*<<< orphan*/  sir_tweak; int /*<<< orphan*/  transceiver_type; int /*<<< orphan*/  work; TYPE_5__ qos; int /*<<< orphan*/  lock; struct net_device* netdev; struct usb_device* usbdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  bNumEndpoints; } ;
struct TYPE_10__ {TYPE_3__ desc; int /*<<< orphan*/  endpoint; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int IR_115200 ; 
 int IR_1152000 ; 
 int IR_19200 ; 
 int IR_2400 ; 
 int IR_38400 ; 
 int IR_4000000 ; 
 int IR_57600 ; 
 int IR_576000 ; 
 int IR_9600 ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct usb_device* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int FUNC9 (struct mcs_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcs_netdev_ops ; 
 int /*<<< orphan*/  mcs_speed_work ; 
 struct mcs_cb* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  qos_mtt_bits ; 
 int /*<<< orphan*/  receive_mode ; 
 int FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  sir_tweak ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  transceiver_type ; 
 int FUNC13 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_interface*,struct mcs_cb*) ; 

__attribute__((used)) static int FUNC15(struct usb_interface *intf,
		     const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC6(intf);
	struct net_device *ndev = NULL;
	struct mcs_cb *mcs;
	int ret = -ENOMEM;

	ndev = FUNC4(sizeof(*mcs));
	if (!ndev)
		goto error1;

	FUNC1(1, "MCS7780 USB-IrDA bridge found at %d.\n", udev->devnum);

	FUNC3(ndev, &intf->dev);

	ret = FUNC13(udev);
	if (ret != 0) {
		FUNC2("mcs7780: usb reset configuration failed\n");
		goto error2;
	}

	mcs = FUNC10(ndev);
	mcs->usbdev = udev;
	mcs->netdev = ndev;
	FUNC12(&mcs->lock);

	/* Initialize QoS for this device */
	FUNC7(&mcs->qos);

	/* That's the Rx capability. */
	mcs->qos.baud_rate.bits &=
	    IR_2400 | IR_9600 | IR_19200 | IR_38400 | IR_57600 | IR_115200
		| IR_576000 | IR_1152000 | (IR_4000000 << 8);


	mcs->qos.min_turn_time.bits &= qos_mtt_bits;
	FUNC8(&mcs->qos);

	/* Speed change work initialisation*/
	FUNC0(&mcs->work, mcs_speed_work);

	ndev->netdev_ops = &mcs_netdev_ops;

	if (!intf->cur_altsetting)
		goto error2;

	ret = FUNC9(mcs, intf->cur_altsetting->endpoint,
				 intf->cur_altsetting->desc.bNumEndpoints);
	if (!ret) {
		ret = -ENODEV;
		goto error2;
	}

	ret = FUNC11(ndev);
	if (ret != 0)
		goto error2;

	FUNC1(1, "IrDA: Registered MosChip MCS7780 device as %s\n",
		   ndev->name);

	mcs->transceiver_type = transceiver_type;
	mcs->sir_tweak = sir_tweak;
	mcs->receive_mode = receive_mode;

	FUNC14(intf, mcs);
	return 0;

	error2:
		FUNC5(ndev);

	error1:
		return ret;
}