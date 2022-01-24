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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct rtl8169_private {unsigned int cur_rx; unsigned int dirty_rx; int opts1_mask; scalar_t__ mac_version; int /*<<< orphan*/  napi; int /*<<< orphan*/ * Rx_databuff; struct RxDesc* RxDescArray; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct RxDesc {int opts2; int /*<<< orphan*/  addr; int /*<<< orphan*/  opts1; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int DescOwn ; 
 unsigned int NUM_RX_DESC ; 
 int /*<<< orphan*/  RTL_FLAG_TASK_RESET_PENDING ; 
 scalar_t__ RTL_GIGA_MAC_VER_05 ; 
 int RxCRC ; 
 int RxFOVF ; 
 int RxRES ; 
 int RxRUNT ; 
 int RxRWT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtl8169_private*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct RxDesc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (struct rtl8169_private*,struct RxDesc*,struct sk_buff*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ ,struct rtl8169_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rtl8169_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_buf_sz ; 
 int /*<<< orphan*/  rx_err ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct net_device *dev, struct rtl8169_private *tp, u32 budget)
{
	unsigned int cur_rx, rx_left;
	unsigned int count;

	cur_rx = tp->cur_rx;
	rx_left = NUM_RX_DESC + tp->dirty_rx - cur_rx;
	rx_left = FUNC4(rx_left, budget);

	for (; rx_left > 0; rx_left--, cur_rx++) {
		unsigned int entry = cur_rx % NUM_RX_DESC;
		struct RxDesc *desc = tp->RxDescArray + entry;
		u32 status;

		FUNC7();
		status = FUNC2(desc->opts1) & tp->opts1_mask;

		if (status & DescOwn)
			break;
		if (FUNC15(status & RxRES)) {
			FUNC6(tp, rx_err, dev, "Rx ERROR. status = %08x\n",
				   status);
			dev->stats.rx_errors++;
			if (status & (RxRWT | RxRUNT))
				dev->stats.rx_length_errors++;
			if (status & RxCRC)
				dev->stats.rx_crc_errors++;
			if (status & RxFOVF) {
				FUNC13(tp, RTL_FLAG_TASK_RESET_PENDING);
				dev->stats.rx_fifo_errors++;
			}
			FUNC9(desc, rx_buf_sz);
		} else {
			struct sk_buff *skb;
			dma_addr_t addr = FUNC3(desc->addr);
			int pkt_size = (status & 0x00003fff) - 4;

			/*
			 * The driver does not support incoming fragmented
			 * frames. They are seen as a symptom of over-mtu
			 * sized frames.
			 */
			if (FUNC15(FUNC8(status))) {
				dev->stats.rx_dropped++;
				dev->stats.rx_length_errors++;
				FUNC9(desc, rx_buf_sz);
				continue;
			}

			skb = FUNC12(tp->Rx_databuff[entry],
						  tp, pkt_size, addr);
			FUNC9(desc, rx_buf_sz);
			if (!skb) {
				dev->stats.rx_dropped++;
				continue;
			}

			FUNC10(skb, status);
			FUNC14(skb, pkt_size);
			skb->protocol = FUNC1(skb, dev);

			if (FUNC11(tp, desc, skb) < 0)
				FUNC5(&tp->napi, skb);

			dev->stats.rx_bytes += pkt_size;
			dev->stats.rx_packets++;
		}

		/* Work around for AMD plateform. */
		if ((desc->opts2 & FUNC0(0xfffe000)) &&
		    (tp->mac_version == RTL_GIGA_MAC_VER_05)) {
			desc->opts2 = 0;
			cur_rx++;
		}
	}

	count = cur_rx - tp->cur_rx;
	tp->cur_rx = cur_rx;

	tp->dirty_rx += count;

	return count;
}