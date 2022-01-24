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
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; scalar_t__ cb; } ;
struct bfusb_data_scb {struct urb* urb; } ;
struct bfusb_data {int /*<<< orphan*/  pending_tx; int /*<<< orphan*/  pending_q; TYPE_1__* hdev; int /*<<< orphan*/  udev; int /*<<< orphan*/  bulk_out_ep; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct bfusb_data*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct urb*,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct urb* FUNC3 (struct bfusb_data*) ; 
 int /*<<< orphan*/  bfusb_tx_complete ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct urb* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct urb*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct urb*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct bfusb_data *data, struct sk_buff *skb)
{
	struct bfusb_data_scb *scb = (void *) skb->cb;
	struct urb *urb = FUNC3(data);
	int err, pipe;

	FUNC0("bfusb %p skb %p len %d", data, skb, skb->len);

	if (!urb && !(urb = FUNC6(0, GFP_ATOMIC)))
		return -ENOMEM;

	pipe = FUNC9(data->udev, data->bulk_out_ep);

	FUNC7(urb, data->udev, pipe, skb->data, skb->len,
			bfusb_tx_complete, skb);

	scb->urb = urb;

	FUNC4(&data->pending_q, skb);

	err = FUNC10(urb, GFP_ATOMIC);
	if (err) {
		FUNC1("%s bulk tx submit failed urb %p err %d", 
					data->hdev->name, urb, err);
		FUNC5(skb, &data->pending_q);
		FUNC8(urb);
	} else
		FUNC2(&data->pending_tx);

	return err;
}