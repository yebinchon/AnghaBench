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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct ks_net {struct net_device* netdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int IRQ_LCI ; 
 int IRQ_LDI ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int IRQ_RXI ; 
 int IRQ_TXI ; 
 int /*<<< orphan*/  KS_ISR ; 
 int /*<<< orphan*/  KS_PMECR ; 
 int PMECR_WKEVT_LINK ; 
 int PMECR_WKEVT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct ks_net*,struct net_device*) ; 
 int FUNC1 (struct ks_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_net*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,struct ks_net*) ; 
 int /*<<< orphan*/  FUNC5 (struct ks_net*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *pw)
{
	struct ks_net *ks = pw;
	struct net_device *netdev = ks->netdev;
	u16 status;

	/*this should be the first in IRQ handler */
	FUNC3(ks);

	status = FUNC1(ks, KS_ISR);
	if (FUNC8(!status)) {
		FUNC2(ks);
		return IRQ_NONE;
	}

	FUNC5(ks, KS_ISR, status);

	if (FUNC6(status & IRQ_RXI))
		FUNC0(ks, netdev);

	if (FUNC8(status & IRQ_LCI))
		FUNC4(netdev, ks);

	if (FUNC8(status & IRQ_TXI))
		FUNC7(netdev);

	if (FUNC8(status & IRQ_LDI)) {

		u16 pmecr = FUNC1(ks, KS_PMECR);
		pmecr &= ~PMECR_WKEVT_MASK;
		FUNC5(ks, KS_PMECR, pmecr | PMECR_WKEVT_LINK);
	}

	/* this should be the last in IRQ handler*/
	FUNC2(ks);
	return IRQ_HANDLED;
}