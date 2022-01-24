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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct pata_acpi {void** mask; } ;
struct TYPE_4__ {int /*<<< orphan*/ * device; } ;
struct ata_port {TYPE_2__ link; struct pata_acpi* private_data; int /*<<< orphan*/ * acpi_handle; TYPE_1__* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ata_port*) ; 
 struct pata_acpi* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct ata_port*,int /*<<< orphan*/ *) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ata_port *ap)
{
	struct pci_dev *pdev = FUNC3(ap->host->dev);
	struct pata_acpi *acpi;

	int ret;

	if (ap->acpi_handle == NULL)
		return -ENODEV;

	acpi = ap->private_data = FUNC1(&pdev->dev, sizeof(struct pata_acpi), GFP_KERNEL);
	if (ap->private_data == NULL)
		return -ENOMEM;
	acpi->mask[0] = FUNC2(ap, &ap->link.device[0]);
	acpi->mask[1] = FUNC2(ap, &ap->link.device[1]);
	ret = FUNC0(ap);
	if (ret < 0)
		return ret;

	return ret;
}