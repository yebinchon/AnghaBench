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
struct ipw_priv {int status; int isr_inta; int /*<<< orphan*/  irq_lock; int /*<<< orphan*/  irq_tasklet; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int IPW_INTA_MASK_ALL ; 
 int /*<<< orphan*/  IPW_INTA_MASK_R ; 
 int /*<<< orphan*/  IPW_INTA_RW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int STATUS_INT_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*) ; 
 int FUNC2 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *data)
{
	struct ipw_priv *priv = data;
	u32 inta, inta_mask;

	if (!priv)
		return IRQ_NONE;

	FUNC4(&priv->irq_lock);

	if (!(priv->status & STATUS_INT_ENABLED)) {
		/* IRQ is disabled */
		goto none;
	}

	inta = FUNC2(priv, IPW_INTA_RW);
	inta_mask = FUNC2(priv, IPW_INTA_MASK_R);

	if (inta == 0xFFFFFFFF) {
		/* Hardware disappeared */
		FUNC0("IRQ INTA == 0xFFFFFFFF\n");
		goto none;
	}

	if (!(inta & (IPW_INTA_MASK_ALL & inta_mask))) {
		/* Shared interrupt */
		goto none;
	}

	/* tell the device to stop sending interrupts */
	FUNC1(priv);

	/* ack current interrupts */
	inta &= (IPW_INTA_MASK_ALL & inta_mask);
	FUNC3(priv, IPW_INTA_RW, inta);

	/* Cache INTA value for our tasklet */
	priv->isr_inta = inta;

	FUNC6(&priv->irq_tasklet);

	FUNC5(&priv->irq_lock);

	return IRQ_HANDLED;
      none:
	FUNC5(&priv->irq_lock);
	return IRQ_NONE;
}