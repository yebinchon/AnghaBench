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
struct pci_dev {int dummy; } ;
struct acpi_buffer {int member_0; char* member_1; } ;
typedef  int /*<<< orphan*/  acpi_method_name ;
struct TYPE_2__ {int /*<<< orphan*/  dhandle; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_FULL_PATHNAME ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int PCI_CLASS_DISPLAY_VGA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 int FUNC2 (struct pci_dev*) ; 
 TYPE_1__ intel_dsm_priv ; 
 struct pci_dev* FUNC3 (int,struct pci_dev*) ; 

__attribute__((used)) static bool FUNC4(void)
{
	char acpi_method_name[255] = { 0 };
	struct acpi_buffer buffer = {sizeof(acpi_method_name), acpi_method_name};
	struct pci_dev *pdev = NULL;
	bool has_dsm = false;
	int vga_count = 0;

	while ((pdev = FUNC3(PCI_CLASS_DISPLAY_VGA << 8, pdev)) != NULL) {
		vga_count++;
		has_dsm |= FUNC2(pdev);
	}

	if (vga_count == 2 && has_dsm) {
		FUNC1(intel_dsm_priv.dhandle, ACPI_FULL_PATHNAME, &buffer);
		FUNC0("VGA switcheroo: detected DSM switching method %s handle\n",
				 acpi_method_name);
		return true;
	}

	return false;
}