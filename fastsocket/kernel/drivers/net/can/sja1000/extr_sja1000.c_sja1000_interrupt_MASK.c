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
typedef  int uint8_t ;
struct sja1000_priv {int (* read_reg ) (struct sja1000_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* post_irq ) (struct sja1000_priv*) ;int /*<<< orphan*/  (* pre_irq ) (struct sja1000_priv*) ;} ;
struct net_device_stats {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_1__ dev; struct net_device_stats stats; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int IRQ_ALI ; 
 int IRQ_BEI ; 
 int IRQ_DOI ; 
 int IRQ_EI ; 
 int IRQ_EPI ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int IRQ_OFF ; 
 int IRQ_RI ; 
 int IRQ_TI ; 
 int IRQ_WUI ; 
 int /*<<< orphan*/  REG_FI ; 
 int /*<<< orphan*/  REG_IER ; 
 int /*<<< orphan*/  REG_IR ; 
 int /*<<< orphan*/  REG_SR ; 
 int SJA1000_MAX_IRQ ; 
 int SR_RBS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct sja1000_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sja1000_priv*) ; 
 int FUNC9 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sja1000_priv*) ; 

irqreturn_t FUNC14(int irq, void *dev_id)
{
	struct net_device *dev = (struct net_device *)dev_id;
	struct sja1000_priv *priv = FUNC3(dev);
	struct net_device_stats *stats = &dev->stats;
	uint8_t isrc, status;
	int n = 0;

	/* Shared interrupts and IRQ off? */
	if (priv->read_reg(priv, REG_IER) == IRQ_OFF)
		return IRQ_NONE;

	if (priv->pre_irq)
		priv->pre_irq(priv);

	while ((isrc = priv->read_reg(priv, REG_IR)) && (n < SJA1000_MAX_IRQ)) {
		n++;
		status = priv->read_reg(priv, REG_SR);

		if (isrc & IRQ_WUI)
			FUNC2(dev->dev.parent, "wakeup interrupt\n");

		if (isrc & IRQ_TI) {
			/* transmission complete interrupt */
			stats->tx_bytes += priv->read_reg(priv, REG_FI) & 0xf;
			stats->tx_packets++;
			FUNC0(dev, 0);
			FUNC4(dev);
		}
		if (isrc & IRQ_RI) {
			/* receive interrupt */
			while (status & SR_RBS) {
				FUNC6(dev);
				status = priv->read_reg(priv, REG_SR);
			}
		}
		if (isrc & (IRQ_DOI | IRQ_EI | IRQ_BEI | IRQ_EPI | IRQ_ALI)) {
			/* error interrupt */
			if (FUNC5(dev, isrc, status))
				break;
		}
	}

	if (priv->post_irq)
		priv->post_irq(priv);

	if (n >= SJA1000_MAX_IRQ)
		FUNC1(dev->dev.parent, "%d messages handled in ISR", n);

	return (n) ? IRQ_HANDLED : IRQ_NONE;
}