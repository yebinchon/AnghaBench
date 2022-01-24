#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct net_device {int dummy; } ;
struct at91_priv {int reg_sr; int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_IDR ; 
 int /*<<< orphan*/  AT91_IMR ; 
 int AT91_IRQ_ERR_FRAME ; 
 int AT91_IRQ_MB_RX ; 
 int AT91_IRQ_MB_TX ; 
 int /*<<< orphan*/  AT91_SR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int FUNC2 (struct at91_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct at91_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct at91_priv* FUNC5 (struct net_device*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct net_device *dev = dev_id;
	struct at91_priv *priv = FUNC5(dev);
	irqreturn_t handled = IRQ_NONE;
	u32 reg_sr, reg_imr;

	reg_sr = FUNC2(priv, AT91_SR);
	reg_imr = FUNC2(priv, AT91_IMR);

	/* Ignore masked interrupts */
	reg_sr &= reg_imr;
	if (!reg_sr)
		goto exit;

	handled = IRQ_HANDLED;

	/* Receive or error interrupt? -> napi */
	if (reg_sr & (AT91_IRQ_MB_RX | AT91_IRQ_ERR_FRAME)) {
		/*
		 * The error bits are clear on read,
		 * save for later use.
		 */
		priv->reg_sr = reg_sr;
		FUNC3(priv, AT91_IDR,
			   AT91_IRQ_MB_RX | AT91_IRQ_ERR_FRAME);
		FUNC4(&priv->napi);
	}

	/* Transmission complete interrupt */
	if (reg_sr & AT91_IRQ_MB_TX)
		FUNC1(dev, reg_sr);

	FUNC0(dev);

 exit:
	return handled;
}