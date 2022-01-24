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
struct tx_buf {struct tx_buf* buf; int /*<<< orphan*/  list; int /*<<< orphan*/  skb_queue; struct hif_device_usb* hif_dev; int /*<<< orphan*/  urb; } ;
struct TYPE_2__ {int tx_buf_cnt; int /*<<< orphan*/  tx_buf; int /*<<< orphan*/  tx_skb_queue; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  tx_pending; } ;
struct hif_device_usb {TYPE_1__ tx; int /*<<< orphan*/  mgmt_submitted; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_TX_BUF_SIZE ; 
 int MAX_TX_URB_NUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hif_device_usb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tx_buf*) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct hif_device_usb *hif_dev)
{
	struct tx_buf *tx_buf;
	int i;

	FUNC0(&hif_dev->tx.tx_buf);
	FUNC0(&hif_dev->tx.tx_pending);
	FUNC7(&hif_dev->tx.tx_lock);
	FUNC1(&hif_dev->tx.tx_skb_queue);
	FUNC3(&hif_dev->mgmt_submitted);

	for (i = 0; i < MAX_TX_URB_NUM; i++) {
		tx_buf = FUNC5(sizeof(struct tx_buf), GFP_KERNEL);
		if (!tx_buf)
			goto err;

		tx_buf->buf = FUNC5(MAX_TX_BUF_SIZE, GFP_KERNEL);
		if (!tx_buf->buf)
			goto err;

		tx_buf->urb = FUNC8(0, GFP_KERNEL);
		if (!tx_buf->urb)
			goto err;

		tx_buf->hif_dev = hif_dev;
		FUNC1(&tx_buf->skb_queue);

		FUNC6(&tx_buf->list, &hif_dev->tx.tx_buf);
	}

	hif_dev->tx.tx_buf_cnt = MAX_TX_URB_NUM;

	return 0;
err:
	if (tx_buf) {
		FUNC4(tx_buf->buf);
		FUNC4(tx_buf);
	}
	FUNC2(hif_dev);
	return -ENOMEM;
}