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
struct msi_msg {int address_hi; int data; int /*<<< orphan*/  address_lo; } ;
struct msi_desc {int dummy; } ;

/* Variables and functions */
 int IOP13XX_MU_MIMR_CORE_SELECT ; 
 int /*<<< orphan*/  IOP13XX_MU_MIMR_PCI ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  handle_simple_irq ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  iop13xx_msi_chip ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct msi_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct msi_msg*) ; 

int FUNC5(struct pci_dev *pdev, struct msi_desc *desc)
{
	int id, irq = FUNC0();
	struct msi_msg msg;

	if (irq < 0)
		return irq;

	FUNC3(irq, desc);

	msg.address_hi = 0x0;
	msg.address_lo = IOP13XX_MU_MIMR_PCI;

	id = FUNC1();
	msg.data = (id << IOP13XX_MU_MIMR_CORE_SELECT) | (irq & 0x7f);

	FUNC4(irq, &msg);
	FUNC2(irq, &iop13xx_msi_chip, handle_simple_irq);

	return 0;
}