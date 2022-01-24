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
struct bdx_priv {int /*<<< orphan*/  napi; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int IR_EXTRA ; 
 int IR_RUN ; 
 int IR_RX_DESC_0 ; 
 int IR_TX_FREE_0 ; 
 int FUNC0 (struct bdx_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bdx_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct bdx_priv*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct bdx_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  regISR ; 
 int /*<<< orphan*/  regRXD_WPTR_0 ; 
 int /*<<< orphan*/  regTXF_WPTR_0 ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev)
{
	struct net_device *ndev = dev;
	struct bdx_priv *priv = FUNC7(ndev);
	u32 isr;

	ENTER;
	isr = (FUNC0(priv, regISR) & IR_RUN);
	if (FUNC8(!isr)) {
		FUNC3(priv);
		return IRQ_NONE;	/* Not our interrupt */
	}

	if (isr & IR_EXTRA)
		FUNC4(priv, isr);

	if (isr & (IR_RX_DESC_0 | IR_TX_FREE_0)) {
		if (FUNC5(FUNC6(&priv->napi))) {
			FUNC2(&priv->napi);
			FUNC1(IRQ_HANDLED);
		} else {
			/* NOTE: we get here if intr has slipped into window
			 * between these lines in bdx_poll:
			 *    bdx_enable_interrupts(priv);
			 *    return 0;
			 * currently intrs are disabled (since we read ISR),
			 * and we have failed to register next poll.
			 * so we read the regs to trigger chip
			 * and allow further interupts. */
			FUNC0(priv, regTXF_WPTR_0);
			FUNC0(priv, regRXD_WPTR_0);
		}
	}

	FUNC3(priv);
	FUNC1(IRQ_HANDLED);
}