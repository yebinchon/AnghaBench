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
struct pq2ads_pci_pic {TYPE_1__* regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int NUM_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct pq2ads_pci_pic* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  pci_pic_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (unsigned int) ; 

__attribute__((used)) static void FUNC5(unsigned int virq)
{
	struct pq2ads_pci_pic *priv = FUNC1(virq);
	int irq = NUM_IRQS - FUNC4(virq) - 1;

	if (irq != -1) {
		unsigned long flags;

		FUNC2(&pci_pic_lock, flags);
		FUNC0(&priv->regs->mask, 1 << irq);
		FUNC3(&pci_pic_lock, flags);
	}
}