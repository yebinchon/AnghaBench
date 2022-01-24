#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct ems_usb {int free_slots; struct net_device* netdev; TYPE_1__ can; struct urb* intr_urb; scalar_t__* intr_in_buffer; int /*<<< orphan*/  udev; int /*<<< orphan*/  rx_submitted; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_STATE_ERROR_ACTIVE ; 
 int CONTR_BUS_ERROR ; 
 int CONTR_CAN_MESSAGE ; 
 int CONTR_CAN_STATE ; 
 int CONTR_CONT_ON ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INTR_IN_BUFFER_SIZE ; 
 int MAX_RX_URBS ; 
 int /*<<< orphan*/  RX_BUFFER_SIZE ; 
 int /*<<< orphan*/  SJA1000_MOD_NORMAL ; 
 int /*<<< orphan*/  URB_NO_TRANSFER_DMA_MAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC2 (struct ems_usb*,int) ; 
 int /*<<< orphan*/  ems_usb_read_bulk_callback ; 
 int /*<<< orphan*/  ems_usb_read_interrupt_callback ; 
 int FUNC3 (struct ems_usb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct urb* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ems_usb*) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ems_usb*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct urb*) ; 

__attribute__((used)) static int FUNC16(struct ems_usb *dev)
{
	struct net_device *netdev = dev->netdev;
	int err, i;

	dev->intr_in_buffer[0] = 0;
	dev->free_slots = 15; /* initial size */

	for (i = 0; i < MAX_RX_URBS; i++) {
		struct urb *urb = NULL;
		u8 *buf = NULL;

		/* create a URB, and a buffer for it */
		urb = FUNC5(0, GFP_KERNEL);
		if (!urb) {
			FUNC0(netdev->dev.parent,
				"No memory left for URBs\n");
			return -ENOMEM;
		}

		buf = FUNC7(dev->udev, RX_BUFFER_SIZE, GFP_KERNEL,
				       &urb->transfer_dma);
		if (!buf) {
			FUNC0(netdev->dev.parent,
				"No memory left for USB buffer\n");
			FUNC11(urb);
			return -ENOMEM;
		}

		FUNC9(urb, dev->udev, FUNC12(dev->udev, 2),
				  buf, RX_BUFFER_SIZE,
				  ems_usb_read_bulk_callback, dev);
		urb->transfer_flags |= URB_NO_TRANSFER_DMA_MAP;
		FUNC6(urb, &dev->rx_submitted);

		err = FUNC14(urb, GFP_KERNEL);
		if (err) {
			if (err == -ENODEV)
				FUNC4(dev->netdev);

			FUNC15(urb);
			FUNC8(dev->udev, RX_BUFFER_SIZE, buf,
					urb->transfer_dma);
			break;
		}

		/* Drop reference, USB core will take care of freeing it */
		FUNC11(urb);
	}

	/* Did we submit any URBs */
	if (i == 0) {
		FUNC1(netdev->dev.parent, "couldn't setup read URBs\n");
		return err;
	}

	/* Warn if we've couldn't transmit all the URBs */
	if (i < MAX_RX_URBS)
		FUNC1(netdev->dev.parent, "rx performance may be slow\n");

	/* Setup and start interrupt URB */
	FUNC10(dev->intr_urb, dev->udev,
			 FUNC13(dev->udev, 1),
			 dev->intr_in_buffer,
			 INTR_IN_BUFFER_SIZE,
			 ems_usb_read_interrupt_callback, dev, 1);

	err = FUNC14(dev->intr_urb, GFP_KERNEL);
	if (err) {
		if (err == -ENODEV)
			FUNC4(dev->netdev);

		FUNC1(netdev->dev.parent, "intr URB submit failed: %d\n",
			 err);

		return err;
	}

	/* CPC-USB will transfer received message to host */
	err = FUNC2(dev, CONTR_CAN_MESSAGE | CONTR_CONT_ON);
	if (err)
		goto failed;

	/* CPC-USB will transfer CAN state changes to host */
	err = FUNC2(dev, CONTR_CAN_STATE | CONTR_CONT_ON);
	if (err)
		goto failed;

	/* CPC-USB will transfer bus errors to host */
	err = FUNC2(dev, CONTR_BUS_ERROR | CONTR_CONT_ON);
	if (err)
		goto failed;

	err = FUNC3(dev, SJA1000_MOD_NORMAL);
	if (err)
		goto failed;

	dev->can.state = CAN_STATE_ERROR_ACTIVE;

	return 0;

failed:
	if (err == -ENODEV)
		FUNC4(dev->netdev);

	FUNC1(netdev->dev.parent, "couldn't submit control: %d\n", err);

	return err;
}