#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ up; } ;
struct ns83820 {int IMR_cache; int /*<<< orphan*/  misc_lock; TYPE_2__* pci_dev; TYPE_1__ rx_info; scalar_t__ base; int /*<<< orphan*/  tx_watchdog; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR_RST ; 
 scalar_t__ IER ; 
 scalar_t__ IMR ; 
 int ISR_TXDESC ; 
 int ISR_TXERR ; 
 int ISR_TXIDLE ; 
 int ISR_TXOK ; 
 int ISR_TXURN ; 
 struct ns83820* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ns83820*) ; 
 int /*<<< orphan*/  FUNC3 (struct ns83820*) ; 
 int /*<<< orphan*/  FUNC4 (struct ns83820*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev)
{
	struct ns83820 *dev = FUNC0(ndev);

	/* FIXME: protect against interrupt handler? */
	FUNC1(&dev->tx_watchdog);

	/* disable interrupts */
	FUNC9(0, dev->base + IMR);
	FUNC9(0, dev->base + IER);
	FUNC5(dev->base + IER);

	dev->rx_info.up = 0;
	FUNC8(dev->pci_dev->irq);

	FUNC4(dev, CR_RST);

	FUNC8(dev->pci_dev->irq);

	FUNC6(&dev->misc_lock);
	dev->IMR_cache &= ~(ISR_TXURN | ISR_TXIDLE | ISR_TXERR | ISR_TXDESC | ISR_TXOK);
	FUNC7(&dev->misc_lock);

	FUNC2(dev);
	FUNC3(dev);

	return 0;
}