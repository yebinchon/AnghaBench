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
struct urb {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  data; scalar_t__ cb; void* dev; } ;
struct bfusb_data_scb {struct urb* urb; } ;
struct bfusb_data {int /*<<< orphan*/  pending_q; TYPE_1__* hdev; int /*<<< orphan*/  udev; int /*<<< orphan*/  bulk_in_ep; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct bfusb_data*,struct urb*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct urb*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HCI_MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  bfusb_rx_complete ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct urb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct bfusb_data *data, struct urb *urb)
{
	struct bfusb_data_scb *scb;
	struct sk_buff *skb;
	int err, pipe, size = HCI_MAX_FRAME_SIZE + 32;

	FUNC0("bfusb %p urb %p", data, urb);

	if (!urb && !(urb = FUNC6(0, GFP_ATOMIC)))
		return -ENOMEM;

	skb = FUNC2(size, GFP_ATOMIC);
	if (!skb) {
		FUNC8(urb);
		return -ENOMEM;
	}

	skb->dev = (void *) data;

	scb = (struct bfusb_data_scb *) skb->cb;
	scb->urb = urb;

	pipe = FUNC9(data->udev, data->bulk_in_ep);

	FUNC7(urb, data->udev, pipe, skb->data, size,
			bfusb_rx_complete, skb);

	FUNC4(&data->pending_q, skb);

	err = FUNC10(urb, GFP_ATOMIC);
	if (err) {
		FUNC1("%s bulk rx submit failed urb %p err %d",
					data->hdev->name, urb, err);
		FUNC5(skb, &data->pending_q);
		FUNC3(skb);
		FUNC8(urb);
	}

	return err;
}