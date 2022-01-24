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
struct temac_local {int /*<<< orphan*/  ndev; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int IRQ_COAL ; 
 unsigned int IRQ_DLY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RX_IRQ_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct temac_local* FUNC1 (struct net_device*) ; 
 unsigned int FUNC2 (struct temac_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct temac_local*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *_ndev)
{
	struct net_device *ndev = _ndev;
	struct temac_local *lp = FUNC1(ndev);
	unsigned int status;

	/* Read and clear the status registers */
	status = FUNC2(lp, RX_IRQ_REG);
	FUNC3(lp, RX_IRQ_REG, status);

	if (status & (IRQ_COAL | IRQ_DLY))
		FUNC0(lp->ndev);

	return IRQ_HANDLED;
}