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
struct pci_dev {int dummy; } ;
struct msi_msg {int address_lo; int data; scalar_t__ address_hi; } ;
struct msi_desc {int dummy; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 int MSI_ADDR_DEST_MODE_PHYS ; 
 int MSI_ADDR_HEADER ; 
 int MSI_ADDR_REDIRECTION_CPU ; 
 int MSI_DATA_DELIVERY_FIXED ; 
 int MSI_DATA_LEVEL_ASSERT ; 
 int MSI_DATA_TRIGGER_EDGE ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  cpu_online_map ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  ia64_msi_chip ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,struct msi_desc*) ; 
 int /*<<< orphan*/  FUNC10 (int,struct msi_msg*) ; 

int FUNC11(struct pci_dev *pdev, struct msi_desc *desc)
{
	struct msi_msg	msg;
	unsigned long	dest_phys_id;
	int	irq, vector;
	cpumask_t mask;

	irq = FUNC4();
	if (irq < 0)
		return irq;

	FUNC9(irq, desc);
	FUNC3(mask, FUNC6(irq), cpu_online_map);
	dest_phys_id = FUNC2(FUNC5(mask));
	vector = FUNC7(irq);

	msg.address_hi = 0;
	msg.address_lo =
		MSI_ADDR_HEADER |
		MSI_ADDR_DEST_MODE_PHYS |
		MSI_ADDR_REDIRECTION_CPU |
		FUNC0(dest_phys_id);

	msg.data =
		MSI_DATA_TRIGGER_EDGE |
		MSI_DATA_LEVEL_ASSERT |
		MSI_DATA_DELIVERY_FIXED |
		FUNC1(vector);

	FUNC10(irq, &msg);
	FUNC8(irq, &ia64_msi_chip, handle_edge_irq);

	return 0;
}