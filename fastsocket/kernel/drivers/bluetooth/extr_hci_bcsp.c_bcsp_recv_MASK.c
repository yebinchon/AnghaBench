#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct hci_uart {scalar_t__ hdev; struct bcsp_struct* priv; } ;
struct bcsp_struct {int rx_state; int rx_count; int rxseq_txack; TYPE_1__* rx_skb; int /*<<< orphan*/  message_crc; int /*<<< orphan*/  rx_esc_state; } ;
struct TYPE_4__ {int* data; void* dev; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BCSP_ESCSTATE_NOESC ; 
#define  BCSP_W4_BCSP_HDR 132 
#define  BCSP_W4_CRC 131 
#define  BCSP_W4_DATA 130 
#define  BCSP_W4_PKT_DELIMITER 129 
#define  BCSP_W4_PKT_START 128 
 int /*<<< orphan*/  FUNC1 (char*,struct hci_uart*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC3 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcsp_struct*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bcsp_struct*) ; 
 TYPE_1__* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct hci_uart *hu, void *data, int count)
{
	struct bcsp_struct *bcsp = hu->priv;
	register unsigned char *ptr;

	FUNC1("hu %p count %d rx_state %d rx_count %ld", 
		hu, count, bcsp->rx_state, bcsp->rx_count);

	ptr = data;
	while (count) {
		if (bcsp->rx_count) {
			if (*ptr == 0xc0) {
				FUNC2("Short BCSP packet");
				FUNC8(bcsp->rx_skb);
				bcsp->rx_state = BCSP_W4_PKT_START;
				bcsp->rx_count = 0;
			} else
				FUNC4(bcsp, *ptr);

			ptr++; count--;
			continue;
		}

		switch (bcsp->rx_state) {
		case BCSP_W4_BCSP_HDR:
			if ((0xff & (u8) ~ (bcsp->rx_skb->data[0] + bcsp->rx_skb->data[1] +
					bcsp->rx_skb->data[2])) != bcsp->rx_skb->data[3]) {
				FUNC2("Error in BCSP hdr checksum");
				FUNC8(bcsp->rx_skb);
				bcsp->rx_state = BCSP_W4_PKT_DELIMITER;
				bcsp->rx_count = 0;
				continue;
			}
			if (bcsp->rx_skb->data[0] & 0x80	/* reliable pkt */
			    		&& (bcsp->rx_skb->data[0] & 0x07) != bcsp->rxseq_txack) {
				FUNC2 ("Out-of-order packet arrived, got %u expected %u",
					bcsp->rx_skb->data[0] & 0x07, bcsp->rxseq_txack);

				FUNC8(bcsp->rx_skb);
				bcsp->rx_state = BCSP_W4_PKT_DELIMITER;
				bcsp->rx_count = 0;
				continue;
			}
			bcsp->rx_state = BCSP_W4_DATA;
			bcsp->rx_count = (bcsp->rx_skb->data[1] >> 4) + 
					(bcsp->rx_skb->data[2] << 4);	/* May be 0 */
			continue;

		case BCSP_W4_DATA:
			if (bcsp->rx_skb->data[0] & 0x40) {	/* pkt with crc */
				bcsp->rx_state = BCSP_W4_CRC;
				bcsp->rx_count = 2;
			} else
				FUNC3(hu);
			continue;

		case BCSP_W4_CRC:
			if (FUNC5(bcsp->message_crc) != FUNC6(bcsp)) {
				FUNC2 ("Checksum failed: computed %04x received %04x",
					FUNC5(bcsp->message_crc),
					FUNC6(bcsp));

				FUNC8(bcsp->rx_skb);
				bcsp->rx_state = BCSP_W4_PKT_DELIMITER;
				bcsp->rx_count = 0;
				continue;
			}
			FUNC9(bcsp->rx_skb, bcsp->rx_skb->len - 2);
			FUNC3(hu);
			continue;

		case BCSP_W4_PKT_DELIMITER:
			switch (*ptr) {
			case 0xc0:
				bcsp->rx_state = BCSP_W4_PKT_START;
				break;
			default:
				/*BT_ERR("Ignoring byte %02x", *ptr);*/
				break;
			}
			ptr++; count--;
			break;

		case BCSP_W4_PKT_START:
			switch (*ptr) {
			case 0xc0:
				ptr++; count--;
				break;

			default:
				bcsp->rx_state = BCSP_W4_BCSP_HDR;
				bcsp->rx_count = 4;
				bcsp->rx_esc_state = BCSP_ESCSTATE_NOESC;
				FUNC0(bcsp->message_crc);

				/* Do not increment ptr or decrement count
				 * Allocate packet. Max len of a BCSP pkt= 
				 * 0xFFF (payload) +4 (header) +2 (crc) */

				bcsp->rx_skb = FUNC7(0x1005, GFP_ATOMIC);
				if (!bcsp->rx_skb) {
					FUNC2("Can't allocate mem for new packet");
					bcsp->rx_state = BCSP_W4_PKT_DELIMITER;
					bcsp->rx_count = 0;
					return 0;
				}
				bcsp->rx_skb->dev = (void *) hu->hdev;
				break;
			}
			break;
		}
	}
	return count;
}