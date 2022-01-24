#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {int ctrl_reg; int /*<<< orphan*/  tx_state; TYPE_3__* hdev; int /*<<< orphan*/  txq; TYPE_5__* p_dev; } ;
typedef  TYPE_4__ bluecard_info_t ;
struct TYPE_14__ {int pkt_type; } ;
struct TYPE_9__ {unsigned int BasePort1; } ;
struct TYPE_13__ {TYPE_1__ io; } ;
struct TYPE_10__ {int byte_tx; } ;
struct TYPE_11__ {TYPE_2__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int HZ ; 
#define  PKT_BAUD_RATE_115200 131 
#define  PKT_BAUD_RATE_230400 130 
#define  PKT_BAUD_RATE_460800 129 
#define  PKT_BAUD_RATE_57600 128 
 scalar_t__ REG_COMMAND ; 
 unsigned char REG_COMMAND_TX_BUF_ONE ; 
 unsigned char REG_COMMAND_TX_BUF_TWO ; 
 scalar_t__ REG_CONTROL ; 
 unsigned char REG_CONTROL_BAUD_RATE_115200 ; 
 unsigned char REG_CONTROL_BAUD_RATE_230400 ; 
 unsigned char REG_CONTROL_BAUD_RATE_460800 ; 
 unsigned char REG_CONTROL_BAUD_RATE_57600 ; 
 int REG_CONTROL_RTS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 unsigned long XMIT_BUFFER_NUMBER ; 
 unsigned long XMIT_BUF_ONE_READY ; 
 unsigned long XMIT_BUF_TWO_READY ; 
 unsigned long XMIT_SENDING ; 
 unsigned long XMIT_SENDING_READY ; 
 unsigned long XMIT_WAKEUP ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int FUNC4 (unsigned int,unsigned int,int /*<<< orphan*/ ,int) ; 
 TYPE_6__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC19 (unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static void FUNC21(bluecard_info_t *info)
{
	if (!info) {
		FUNC0("Unknown device");
		return;
	}

	if (!FUNC20(XMIT_SENDING_READY, &(info->tx_state)))
		return;

	if (FUNC19(XMIT_SENDING, &(info->tx_state))) {
		FUNC15(XMIT_WAKEUP, &(info->tx_state));
		return;
	}

	do {
		register unsigned int iobase = info->p_dev->io.BasePort1;
		register unsigned int offset;
		register unsigned char command;
		register unsigned long ready_bit;
		register struct sk_buff *skb;
		register int len;

		FUNC7(XMIT_WAKEUP, &(info->tx_state));

		if (!FUNC12(info->p_dev))
			return;

		if (FUNC20(XMIT_BUFFER_NUMBER, &(info->tx_state))) {
			if (!FUNC20(XMIT_BUF_TWO_READY, &(info->tx_state)))
				break;
			offset = 0x10;
			command = REG_COMMAND_TX_BUF_TWO;
			ready_bit = XMIT_BUF_TWO_READY;
		} else {
			if (!FUNC20(XMIT_BUF_ONE_READY, &(info->tx_state)))
				break;
			offset = 0x00;
			command = REG_COMMAND_TX_BUF_ONE;
			ready_bit = XMIT_BUF_ONE_READY;
		}

		if (!(skb = FUNC16(&(info->txq))))
			break;

		if (FUNC5(skb)->pkt_type & 0x80) {
			/* Disable RTS */
			info->ctrl_reg |= REG_CONTROL_RTS;
			FUNC10(info->ctrl_reg, iobase + REG_CONTROL);
		}

		/* Activate LED */
		FUNC3(info);

		/* Send frame */
		len = FUNC4(iobase, offset, skb->data, skb->len);

		/* Tell the FPGA to send the data */
		FUNC11(command, iobase + REG_COMMAND);

		/* Mark the buffer as dirty */
		FUNC7(ready_bit, &(info->tx_state));

		if (FUNC5(skb)->pkt_type & 0x80) {
			FUNC1(wq);
			FUNC2(wait);

			unsigned char baud_reg;

			switch (FUNC5(skb)->pkt_type) {
			case PKT_BAUD_RATE_460800:
				baud_reg = REG_CONTROL_BAUD_RATE_460800;
				break;
			case PKT_BAUD_RATE_230400:
				baud_reg = REG_CONTROL_BAUD_RATE_230400;
				break;
			case PKT_BAUD_RATE_115200:
				baud_reg = REG_CONTROL_BAUD_RATE_115200;
				break;
			case PKT_BAUD_RATE_57600:
				/* Fall through... */
			default:
				baud_reg = REG_CONTROL_BAUD_RATE_57600;
				break;
			}

			/* Wait until the command reaches the baseband */
			FUNC13(&wq, &wait, TASK_INTERRUPTIBLE);
			FUNC14(HZ/10);
			FUNC8(&wq, &wait);

			/* Set baud on baseband */
			info->ctrl_reg &= ~0x03;
			info->ctrl_reg |= baud_reg;
			FUNC10(info->ctrl_reg, iobase + REG_CONTROL);

			/* Enable RTS */
			info->ctrl_reg &= ~REG_CONTROL_RTS;
			FUNC10(info->ctrl_reg, iobase + REG_CONTROL);

			/* Wait before the next HCI packet can be send */
			FUNC13(&wq, &wait, TASK_INTERRUPTIBLE);
			FUNC14(HZ);
			FUNC8(&wq, &wait);
		}

		if (len == skb->len) {
			FUNC9(skb);
		} else {
			FUNC17(skb, len);
			FUNC18(&(info->txq), skb);
		}

		info->hdev->stat.byte_tx += len;

		/* Change buffer */
		FUNC6(XMIT_BUFFER_NUMBER, &(info->tx_state));

	} while (FUNC20(XMIT_WAKEUP, &(info->tx_state)));

	FUNC7(XMIT_SENDING, &(info->tx_state));
}