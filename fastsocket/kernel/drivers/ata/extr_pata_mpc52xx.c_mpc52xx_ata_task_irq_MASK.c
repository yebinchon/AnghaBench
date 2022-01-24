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
struct mpc52xx_ata_priv {int /*<<< orphan*/  waiting_for_dma; int /*<<< orphan*/  dmatsk; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATA_DMA_INTR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t
FUNC2(int irq, void *vpriv)
{
	struct mpc52xx_ata_priv *priv = vpriv;
	while (FUNC0(priv->dmatsk))
		FUNC1(priv->dmatsk, NULL, NULL);

	priv->waiting_for_dma |= ATA_DMA_INTR;

	return IRQ_HANDLED;
}