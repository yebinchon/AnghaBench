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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {struct pci_bus* subordinate; } ;
struct pci_bus {int /*<<< orphan*/  number; } ;
struct callback_args {int /*<<< orphan*/  root_handle; int /*<<< orphan*/  (* user_function ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void**) ;struct pci_bus* pci_bus; } ;
typedef  int /*<<< orphan*/  (* acpi_walk_callback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void**) ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void**),struct callback_args*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 struct pci_dev* FUNC7 (struct pci_bus*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC8(acpi_handle handle, u32 lvl, void *context, void **rv)
{
	int device, function;
	unsigned long long adr;
	acpi_status status;
	acpi_handle dummy_handle;
	acpi_walk_callback user_function;

	struct pci_dev *dev;
	struct pci_bus *pci_bus;
	struct callback_args child_context;
	struct callback_args *parent_context = context;

	pci_bus = parent_context->pci_bus;
	user_function = parent_context->user_function;

	status = FUNC3(handle, "_ADR", &dummy_handle);
	if (FUNC0(status))
		return AE_OK;

	status = FUNC2(handle, "_ADR", NULL, &adr);
	if (FUNC0(status))
		return AE_OK;

	device = (adr >> 16) & 0xffff;
	function = adr & 0xffff;

	dev = FUNC7(pci_bus, FUNC1(device, function));
	if (!dev || !dev->subordinate)
		goto out;

	child_context.pci_bus = dev->subordinate;
	child_context.user_function = user_function;
	child_context.root_handle = parent_context->root_handle;

	FUNC5("p2p bridge walk, pci_bus = %x\n", dev->subordinate->number);
	status = FUNC4(ACPI_TYPE_DEVICE, handle, (u32)1,
				     user_function, &child_context, NULL);
	if (FUNC0(status))
		goto out;

	status = FUNC4(ACPI_TYPE_DEVICE, handle, (u32)1,
				     walk_p2p_bridge, &child_context, NULL);
out:
	FUNC6(dev);
	return AE_OK;
}