#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct TYPE_11__ {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {int /*<<< orphan*/  trans_start; int /*<<< orphan*/  name; TYPE_1__ stats; } ;
struct TYPE_14__ {scalar_t__ trace_on; scalar_t__ chan; } ;
typedef  TYPE_4__ pc300dev_t ;
struct TYPE_15__ {int channel; int /*<<< orphan*/  tx_next_bd; scalar_t__ card; } ;
typedef  TYPE_5__ pc300ch_t ;
struct TYPE_13__ {scalar_t__ type; scalar_t__ cpld_reg2; scalar_t__ falcbase; scalar_t__ scabase; } ;
struct TYPE_16__ {TYPE_3__ hw; TYPE_2__* chan; } ;
typedef  TYPE_6__ pc300_t ;
struct TYPE_17__ {scalar_t__ priv; } ;
struct TYPE_12__ {int nfree_tx_bd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int CMD_TX_BUF_CLR ; 
 int CMD_TX_ENA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,unsigned long) ; 
 int CPLD_REG2_FALC_LED1 ; 
 int DSR_DE ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EDAL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PC300_TE ; 
 int /*<<< orphan*/  ST3 ; 
 int ST3_DCD ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,struct sk_buff*,char) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 TYPE_8__* FUNC11 (struct net_device*) ; 
 scalar_t__ FUNC12 (TYPE_6__*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct net_device *dev)
{
	pc300dev_t *d = (pc300dev_t *) FUNC11(dev)->priv;
	pc300ch_t *chan = (pc300ch_t *) d->chan;
	pc300_t *card = (pc300_t *) chan->card;
	int ch = chan->channel;
	unsigned long flags;
#ifdef PC300_DEBUG_TX
	int i;
#endif

	if (!FUNC14(dev)) {
		/* DCD must be OFF: drop packet */
		FUNC10(skb);
		dev->stats.tx_errors++;
		dev->stats.tx_carrier_errors++;
		return 0;
	} else if (FUNC6(card->hw.scabase + FUNC4(ST3, ch)) & ST3_DCD) {
		FUNC17("%s: DCD is OFF. Going administrative down.\n", dev->name);
		dev->stats.tx_errors++;
		dev->stats.tx_carrier_errors++;
		FUNC10(skb);
		FUNC13(dev);
		FUNC0(card, flags);
		FUNC8(card->hw.scabase + FUNC4(CMD, ch), CMD_TX_BUF_CLR);
		if (card->hw.type == PC300_TE) {
			FUNC8(card->hw.falcbase + card->hw.cpld_reg2,
				   FUNC6(card->hw.falcbase + card->hw.cpld_reg2) & 
				   			~(CPLD_REG2_FALC_LED1 << (2 * ch)));
		}
		FUNC1(card, flags);
		FUNC16(dev);
		return 0;
	}

	/* Write buffer to DMA buffers */
	if (FUNC12(card, ch, (u8 *)skb->data, skb->len) != 0) {
//		printk("%s: write error. Dropping TX packet.\n", dev->name);
		FUNC15(dev);
		FUNC10(skb);
		dev->stats.tx_errors++;
		dev->stats.tx_dropped++;
		return 0;
	}
#ifdef PC300_DEBUG_TX
	printk("%s T:", dev->name);
	for (i = 0; i < skb->len; i++)
		printk(" %02x", *(skb->data + i));
	printk("\n");
#endif

	if (d->trace_on) {
		FUNC7(dev, skb, 'T');
	}
	dev->trans_start = jiffies;

	/* Start transmission */
	FUNC0(card, flags);
	/* verify if it has more than one free descriptor */
	if (card->chan[ch].nfree_tx_bd <= 1) {
		/* don't have so stop the queue */
		FUNC15(dev);
	}
	FUNC9(card->hw.scabase + FUNC3(EDAL, ch),
		   FUNC5(ch, chan->tx_next_bd));
	FUNC8(card->hw.scabase + FUNC4(CMD, ch), CMD_TX_ENA);
	FUNC8(card->hw.scabase + FUNC2(ch), DSR_DE);
	if (card->hw.type == PC300_TE) {
		FUNC8(card->hw.falcbase + card->hw.cpld_reg2,
			   FUNC6(card->hw.falcbase + card->hw.cpld_reg2) |
			   (CPLD_REG2_FALC_LED1 << (2 * ch)));
	}
	FUNC1(card, flags);
	FUNC10(skb);

	return 0;
}