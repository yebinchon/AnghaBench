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
typedef  int /*<<< orphan*/  uint16_t ;
struct mxc_nand_host {int /*<<< orphan*/  irq_waitq; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ NFC_CONFIG1 ; 
 int /*<<< orphan*/  NFC_INT_MSK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct mxc_nand_host *host = dev_id;

	uint16_t tmp;

	tmp = FUNC0(host->regs + NFC_CONFIG1);
	tmp |= NFC_INT_MSK; /* Disable interrupt */
	FUNC2(tmp, host->regs + NFC_CONFIG1);

	FUNC1(&host->irq_waitq);

	return IRQ_HANDLED;
}