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
struct usb_device {int dummy; } ;
struct rt2x00_dev {int /*<<< orphan*/  flags; int /*<<< orphan*/  dev; } ;
struct queue_entry_priv_usb {int /*<<< orphan*/  urb; } ;
struct queue_entry {int /*<<< orphan*/  flags; TYPE_2__* skb; TYPE_1__* queue; struct queue_entry_priv_usb* priv_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {int /*<<< orphan*/  usb_endpoint; struct rt2x00_dev* rt2x00dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_STATE_PRESENT ; 
 int ENODEV ; 
 int /*<<< orphan*/  ENTRY_DATA_IO_FAILED ; 
 int /*<<< orphan*/  ENTRY_DATA_STATUS_PENDING ; 
 int /*<<< orphan*/  ENTRY_OWNER_DEVICE_DATA ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct queue_entry*) ; 
 int /*<<< orphan*/  rt2x00usb_interrupt_rxdone ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct queue_entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC10(struct queue_entry *entry, void *data)
{
	struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
	struct usb_device *usb_dev = FUNC6(rt2x00dev->dev);
	struct queue_entry_priv_usb *entry_priv = entry->priv_data;
	int status;

	if (FUNC4(ENTRY_OWNER_DEVICE_DATA, &entry->flags) ||
	    FUNC5(ENTRY_DATA_STATUS_PENDING, &entry->flags))
		return false;

	FUNC2(entry);

	FUNC7(entry_priv->urb, usb_dev,
			  FUNC8(usb_dev, entry->queue->usb_endpoint),
			  entry->skb->data, entry->skb->len,
			  rt2x00usb_interrupt_rxdone, entry);

	status = FUNC9(entry_priv->urb, GFP_ATOMIC);
	if (status) {
		if (status == -ENODEV)
			FUNC0(DEVICE_STATE_PRESENT, &rt2x00dev->flags);
		FUNC3(ENTRY_DATA_IO_FAILED, &entry->flags);
		FUNC1(entry);
	}

	return false;
}