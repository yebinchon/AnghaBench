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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int* data; void* dev; } ;
struct TYPE_5__ {int byte_rx; int /*<<< orphan*/  err_rx; } ;
struct hci_dev {TYPE_2__ stat; } ;
struct btmrvl_sdio_card {int /*<<< orphan*/  ioport; int /*<<< orphan*/  func; } ;
struct TYPE_4__ {struct btmrvl_sdio_card* card; struct hci_dev* hcidev; } ;
struct btmrvl_private {TYPE_1__ btmrvl_dev; } ;
struct TYPE_6__ {int pkt_type; } ;

/* Variables and functions */
 int ALLOC_BUF_SIZE ; 
 int BTSDIO_DMA_ALIGN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_ACLDATA_PKT 131 
#define  HCI_EVENT_PKT 130 
#define  HCI_SCODATA_PKT 129 
 int HCI_VENDOR_PKT ; 
#define  MRVL_VENDOR_PKT 128 
 int SDIO_BLOCK_SIZE ; 
 int SDIO_HEADER_LEN ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btmrvl_private*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct btmrvl_private*,struct sk_buff*) ; 
 int FUNC5 (struct btmrvl_sdio_card*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC12(struct btmrvl_private *priv)
{
	u16 buf_len = 0;
	int ret, buf_block_len, blksz;
	struct sk_buff *skb = NULL;
	u32 type;
	u8 *payload = NULL;
	struct hci_dev *hdev = priv->btmrvl_dev.hcidev;
	struct btmrvl_sdio_card *card = priv->btmrvl_dev.card;

	if (!card || !card->func) {
		FUNC0("card or function is NULL!");
		ret = -EINVAL;
		goto exit;
	}

	/* Read the length of data to be transferred */
	ret = FUNC5(card, &buf_len);
	if (ret < 0) {
		FUNC0("read rx_len failed");
		ret = -EIO;
		goto exit;
	}

	blksz = SDIO_BLOCK_SIZE;
	buf_block_len = (buf_len + blksz - 1) / blksz;

	if (buf_len <= SDIO_HEADER_LEN
			|| (buf_block_len * blksz) > ALLOC_BUF_SIZE) {
		FUNC0("invalid packet length: %d", buf_len);
		ret = -EINVAL;
		goto exit;
	}

	/* Allocate buffer */
	skb = FUNC2(buf_block_len * blksz + BTSDIO_DMA_ALIGN,
								GFP_ATOMIC);
	if (skb == NULL) {
		FUNC0("No free skb");
		goto exit;
	}

	if ((unsigned long) skb->data & (BTSDIO_DMA_ALIGN - 1)) {
		FUNC11(skb, (unsigned long) skb->data &
					(BTSDIO_DMA_ALIGN - 1));
		FUNC10(skb, (unsigned long) skb->data &
					(BTSDIO_DMA_ALIGN - 1));
	}

	payload = skb->data;

	ret = FUNC9(card->func, payload, card->ioport,
			  buf_block_len * blksz);
	if (ret < 0) {
		FUNC0("readsb failed: %d", ret);
		ret = -EIO;
		goto exit;
	}

	/* This is SDIO specific header length: byte[2][1][0], type: byte[3]
	 * (HCI_COMMAND = 1, ACL_DATA = 2, SCO_DATA = 3, 0xFE = Vendor)
	 */

	buf_len = payload[0];
	buf_len |= (u16) payload[1] << 8;
	type = payload[3];

	switch (type) {
	case HCI_ACLDATA_PKT:
	case HCI_SCODATA_PKT:
	case HCI_EVENT_PKT:
		FUNC1(skb)->pkt_type = type;
		skb->dev = (void *)hdev;
		FUNC11(skb, buf_len);
		FUNC10(skb, SDIO_HEADER_LEN);

		if (type == HCI_EVENT_PKT)
			FUNC3(priv, skb);

		FUNC6(skb);
		hdev->stat.byte_rx += buf_len;
		break;

	case MRVL_VENDOR_PKT:
		FUNC1(skb)->pkt_type = HCI_VENDOR_PKT;
		skb->dev = (void *)hdev;
		FUNC11(skb, buf_len);
		FUNC10(skb, SDIO_HEADER_LEN);

		if (FUNC4(priv, skb))
			FUNC6(skb);

		hdev->stat.byte_rx += buf_len;
		break;

	default:
		FUNC0("Unknow packet type:%d", type);
		FUNC8("", DUMP_PREFIX_OFFSET, payload,
						blksz * buf_block_len);

		FUNC7(skb);
		skb = NULL;
		break;
	}

exit:
	if (ret) {
		hdev->stat.err_rx++;
		if (skb)
			FUNC7(skb);
	}

	return ret;
}