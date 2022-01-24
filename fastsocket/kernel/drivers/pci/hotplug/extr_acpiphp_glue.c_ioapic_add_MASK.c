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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct acpiphp_ioapic {int /*<<< orphan*/  list; struct pci_dev* dev; int /*<<< orphan*/  gsi_base; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 unsigned long long ACPI_STA_ALL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_CTRL_DEPTH ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ioapic_list ; 
 int /*<<< orphan*/  ioapic_list_lock ; 
 int /*<<< orphan*/  FUNC6 (struct acpiphp_ioapic*) ; 
 struct acpiphp_ioapic* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 scalar_t__ FUNC11 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct pci_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static acpi_status
FUNC18(acpi_handle handle, u32 lvl, void *context, void **rv)
{
	acpi_status status;
	unsigned long long sta;
	acpi_handle tmp;
	struct pci_dev *pdev;
	u32 gsi_base;
	u64 phys_addr;
	struct acpiphp_ioapic *ioapic;

	/* Evaluate _STA if present */
	status = FUNC1(handle, "_STA", NULL, &sta);
	if (FUNC0(status) && sta != ACPI_STA_ALL)
		return AE_CTRL_DEPTH;

	/* Scan only PCI bus scope */
	status = FUNC2(handle, "_HID", &tmp);
	if (FUNC0(status))
		return AE_CTRL_DEPTH;

	if (FUNC5(handle, &gsi_base))
		return AE_OK;

	ioapic = FUNC7(sizeof(*ioapic), GFP_KERNEL);
	if (!ioapic)
		return AE_NO_MEMORY;

	pdev = FUNC4(handle);
	if (!pdev)
		goto exit_kfree;

	if (FUNC11(pdev))
		goto exit_pci_dev_put;

	FUNC15(pdev);

	if (FUNC13(pdev, 0, "I/O APIC(acpiphp)"))
		goto exit_pci_disable_device;

	phys_addr = FUNC14(pdev, 0);
	if (FUNC3(handle, phys_addr, gsi_base))
		goto exit_pci_release_region;

	ioapic->gsi_base = gsi_base;
	ioapic->dev = pdev;
	FUNC16(&ioapic_list_lock);
	FUNC8(&ioapic->list, &ioapic_list);
	FUNC17(&ioapic_list_lock);

	return AE_OK;

 exit_pci_release_region:
	FUNC12(pdev, 0);
 exit_pci_disable_device:
	FUNC10(pdev);
 exit_pci_dev_put:
	FUNC9(pdev);
 exit_kfree:
	FUNC6(ioapic);

	return AE_OK;
}