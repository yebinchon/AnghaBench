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
struct TYPE_2__ {int tx_errors; } ;
struct net_device {int /*<<< orphan*/  name; TYPE_1__ stats; } ;
struct at91_private {int /*<<< orphan*/  skb_length; int /*<<< orphan*/  skb_physaddr; int /*<<< orphan*/ * skb; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_EMAC_CTL ; 
 int /*<<< orphan*/  AT91_EMAC_ISR ; 
 unsigned long AT91_EMAC_RBNA ; 
 unsigned long AT91_EMAC_RCOM ; 
 unsigned long AT91_EMAC_RE ; 
 unsigned long AT91_EMAC_ROVR ; 
 unsigned long AT91_EMAC_RTRY ; 
 unsigned long AT91_EMAC_TCOM ; 
 unsigned long AT91_EMAC_TUND ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct at91_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *) dev_id;
	struct at91_private *lp = FUNC5(dev);
	unsigned long intstatus, ctl;

	/* MAC Interrupt Status register indicates what interrupts are pending.
	   It is automatically cleared once read. */
	intstatus = FUNC0(AT91_EMAC_ISR);

	if (intstatus & AT91_EMAC_RCOM)		/* Receive complete */
		FUNC2(dev);

	if (intstatus & AT91_EMAC_TCOM) {	/* Transmit complete */
		/* The TCOM bit is set even if the transmission failed. */
		if (intstatus & (AT91_EMAC_TUND | AT91_EMAC_RTRY))
			dev->stats.tx_errors += 1;

		if (lp->skb) {
			FUNC3(lp->skb);
			lp->skb = NULL;
			FUNC4(NULL, lp->skb_physaddr, lp->skb_length, DMA_TO_DEVICE);
		}
		FUNC6(dev);
	}

	/* Work-around for Errata #11 */
	if (intstatus & AT91_EMAC_RBNA) {
		ctl = FUNC0(AT91_EMAC_CTL);
		FUNC1(AT91_EMAC_CTL, ctl & ~AT91_EMAC_RE);
		FUNC1(AT91_EMAC_CTL, ctl | AT91_EMAC_RE);
	}

	if (intstatus & AT91_EMAC_ROVR)
		FUNC7("%s: ROVR error\n", dev->name);

	return IRQ_HANDLED;
}