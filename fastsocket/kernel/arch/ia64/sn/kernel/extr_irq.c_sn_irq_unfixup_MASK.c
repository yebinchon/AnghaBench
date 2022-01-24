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
struct sn_irq_info {size_t irq_irq; int /*<<< orphan*/  rcu; int /*<<< orphan*/  list; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {struct sn_irq_info* pdi_sn_irq_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 TYPE_1__* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sn_irq_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  sn_irq_info_free ; 
 int /*<<< orphan*/  sn_irq_info_lock ; 
 int /*<<< orphan*/ * sn_irq_lh ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sn_irq_info*) ; 

void FUNC11(struct pci_dev *pci_dev)
{
	struct sn_irq_info *sn_irq_info;

	/* Only cleanup IRQ stuff if this device has a host bus context */
	if (!FUNC0(pci_dev))
		return;

	sn_irq_info = FUNC1(pci_dev)->pdi_sn_irq_info;
	if (!sn_irq_info)
		return;
	if (!sn_irq_info->irq_irq) {
		FUNC4(sn_irq_info);
		return;
	}

	FUNC10(sn_irq_info);
	FUNC8(&sn_irq_info_lock);
	FUNC5(&sn_irq_info->list);
	FUNC9(&sn_irq_info_lock);
	if (FUNC6(sn_irq_lh[sn_irq_info->irq_irq]))
		FUNC3(sn_irq_info->irq_irq);
	FUNC2(&sn_irq_info->rcu, sn_irq_info_free);
	FUNC7(pci_dev);

}