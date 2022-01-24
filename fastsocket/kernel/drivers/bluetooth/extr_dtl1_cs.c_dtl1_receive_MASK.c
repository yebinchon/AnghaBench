#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
struct TYPE_22__ {int len; int type; } ;
typedef  TYPE_5__ nsh_t ;
struct TYPE_23__ {int rx_state; scalar_t__ rx_count; TYPE_7__* rx_skb; TYPE_4__* hdev; TYPE_2__* p_dev; } ;
typedef  TYPE_6__ dtl1_info_t ;
struct TYPE_24__ {void* dev; int /*<<< orphan*/  len; int /*<<< orphan*/  tail; scalar_t__ data; } ;
struct TYPE_20__ {int /*<<< orphan*/  byte_rx; } ;
struct TYPE_21__ {TYPE_3__ stat; } ;
struct TYPE_18__ {unsigned int BasePort1; } ;
struct TYPE_19__ {TYPE_1__ io; } ;
struct TYPE_17__ {int pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HCI_MAX_FRAME_SIZE ; 
 void* NSHL ; 
#define  RECV_WAIT_DATA 129 
#define  RECV_WAIT_NSH 128 
 scalar_t__ UART_LSR ; 
 int UART_LSR_DR ; 
 scalar_t__ UART_RX ; 
 TYPE_15__* FUNC1 (TYPE_7__*) ; 
 TYPE_7__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,void*) ; 
 int* FUNC8 (TYPE_7__*,int) ; 

__attribute__((used)) static void FUNC9(dtl1_info_t *info)
{
	unsigned int iobase;
	nsh_t *nsh;
	int boguscount = 0;

	if (!info) {
		FUNC0("Unknown device");
		return;
	}

	iobase = info->p_dev->io.BasePort1;

	do {
		info->hdev->stat.byte_rx++;

		/* Allocate packet */
		if (info->rx_skb == NULL)
			if (!(info->rx_skb = FUNC2(HCI_MAX_FRAME_SIZE, GFP_ATOMIC))) {
				FUNC0("Can't allocate mem for new packet");
				info->rx_state = RECV_WAIT_NSH;
				info->rx_count = NSHL;
				return;
			}

		*FUNC8(info->rx_skb, 1) = FUNC5(iobase + UART_RX);
		nsh = (nsh_t *)info->rx_skb->data;

		info->rx_count--;

		if (info->rx_count == 0) {

			switch (info->rx_state) {
			case RECV_WAIT_NSH:
				info->rx_state = RECV_WAIT_DATA;
				info->rx_count = nsh->len + (nsh->len & 0x0001);
				break;
			case RECV_WAIT_DATA:
				FUNC1(info->rx_skb)->pkt_type = nsh->type;

				/* remove PAD byte if it exists */
				if (nsh->len & 0x0001) {
					info->rx_skb->tail--;
					info->rx_skb->len--;
				}

				/* remove NSH */
				FUNC7(info->rx_skb, NSHL);

				switch (FUNC1(info->rx_skb)->pkt_type) {
				case 0x80:
					/* control data for the Nokia Card */
					FUNC3(info, info->rx_skb);
					break;
				case 0x82:
				case 0x83:
				case 0x84:
					/* send frame to the HCI layer */
					info->rx_skb->dev = (void *) info->hdev;
					FUNC1(info->rx_skb)->pkt_type &= 0x0f;
					FUNC4(info->rx_skb);
					break;
				default:
					/* unknown packet */
					FUNC0("Unknown HCI packet with type 0x%02x received", FUNC1(info->rx_skb)->pkt_type);
					FUNC6(info->rx_skb);
					break;
				}

				info->rx_state = RECV_WAIT_NSH;
				info->rx_count = NSHL;
				info->rx_skb = NULL;
				break;
			}

		}

		/* Make sure we don't stay here too long */
		if (boguscount++ > 32)
			break;

	} while (FUNC5(iobase + UART_LSR) & UART_LSR_DR);
}