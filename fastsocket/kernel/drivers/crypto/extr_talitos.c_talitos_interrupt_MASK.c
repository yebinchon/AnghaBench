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
struct talitos_private {int /*<<< orphan*/  done_task; scalar_t__ reg; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ TALITOS_ICR ; 
 scalar_t__ TALITOS_ICR_LO ; 
 scalar_t__ TALITOS_IMR ; 
 int /*<<< orphan*/  TALITOS_IMR_DONE ; 
 scalar_t__ TALITOS_ISR ; 
 int TALITOS_ISR_CHDONE ; 
 scalar_t__ TALITOS_ISR_LO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct talitos_private* FUNC1 (struct device*) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *data)
{
	struct device *dev = data;
	struct talitos_private *priv = FUNC1(dev);
	u32 isr, isr_lo;

	isr = FUNC2(priv->reg + TALITOS_ISR);
	isr_lo = FUNC2(priv->reg + TALITOS_ISR_LO);
	/* Acknowledge interrupt */
	FUNC4(priv->reg + TALITOS_ICR, isr);
	FUNC4(priv->reg + TALITOS_ICR_LO, isr_lo);

	if (FUNC7((isr & ~TALITOS_ISR_CHDONE) || isr_lo))
		FUNC5((unsigned long)data, isr, isr_lo);
	else
		if (FUNC3(isr & TALITOS_ISR_CHDONE)) {
			/* mask further done interrupts. */
			FUNC0(priv->reg + TALITOS_IMR, TALITOS_IMR_DONE);
			/* done_task will unmask done interrupts at exit */
			FUNC6(&priv->done_task);
		}

	return (isr || isr_lo) ? IRQ_HANDLED : IRQ_NONE;
}