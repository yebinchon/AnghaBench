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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int dummy; } ;
struct pci_bus {int /*<<< orphan*/  number; } ;
struct TYPE_2__ {int /*<<< orphan*/  notifier_call; } ;
struct acpiphp_slot {int function; int flags; int device; unsigned long long sun; struct acpiphp_slot* next; TYPE_1__ nb; int /*<<< orphan*/  funcs; int /*<<< orphan*/  sibling; struct acpiphp_slot* slot; int /*<<< orphan*/  crit_sect; struct acpiphp_bridge* bridge; int /*<<< orphan*/  handle; } ;
struct acpiphp_func {int function; int flags; int device; unsigned long long sun; struct acpiphp_func* next; TYPE_1__ nb; int /*<<< orphan*/  funcs; int /*<<< orphan*/  sibling; struct acpiphp_func* slot; int /*<<< orphan*/  crit_sect; struct acpiphp_bridge* bridge; int /*<<< orphan*/  handle; } ;
struct acpiphp_bridge {int nr_slots; struct acpiphp_slot* slots; struct pci_bus* pci_bus; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SYSTEM_NOTIFY ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int EBUSY ; 
 int FUNC_HAS_DCK ; 
 int FUNC_HAS_EJ0 ; 
 int FUNC_HAS_PS0 ; 
 int FUNC_HAS_PS3 ; 
 int FUNC_HAS_STA ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int SLOT_ENABLED ; 
 int SLOT_POWEREDON ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpiphp_slot*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpiphp_dock_ops ; 
 int FUNC8 (struct acpiphp_slot*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  handle_hotplug_event_func ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct acpiphp_slot*) ; 
 struct acpiphp_slot* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_bus*) ; 
 struct pci_dev* FUNC18 (struct pci_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  post_dock_fixups ; 
 scalar_t__ FUNC19 (TYPE_1__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpiphp_slot*) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 

__attribute__((used)) static acpi_status
FUNC22(acpi_handle handle, u32 lvl, void *context, void **rv)
{
	struct acpiphp_bridge *bridge = (struct acpiphp_bridge *)context;
	struct acpiphp_slot *slot;
	struct acpiphp_func *newfunc;
	acpi_handle tmp;
	acpi_status status = AE_OK;
	unsigned long long adr, sun;
	int device, function, retval;
	struct pci_bus *pbus = bridge->pci_bus;
	struct pci_dev *pdev;

	if (!FUNC7(pbus, handle) && !FUNC11(handle))
		return AE_OK;

	FUNC4(handle, "_ADR", NULL, &adr);
	device = (adr >> 16) & 0xffff;
	function = adr & 0xffff;

	newfunc = FUNC13(sizeof(struct acpiphp_func), GFP_KERNEL);
	if (!newfunc)
		return AE_NO_MEMORY;

	FUNC2(&newfunc->sibling);
	newfunc->handle = handle;
	newfunc->function = function;

	if (FUNC1(FUNC5(handle, "_EJ0", &tmp)))
		newfunc->flags = FUNC_HAS_EJ0;

	if (FUNC1(FUNC5(handle, "_STA", &tmp)))
		newfunc->flags |= FUNC_HAS_STA;

	if (FUNC1(FUNC5(handle, "_PS0", &tmp)))
		newfunc->flags |= FUNC_HAS_PS0;

	if (FUNC1(FUNC5(handle, "_PS3", &tmp)))
		newfunc->flags |= FUNC_HAS_PS3;

	if (FUNC1(FUNC5(handle, "_DCK", &tmp)))
		newfunc->flags |= FUNC_HAS_DCK;

	status = FUNC4(handle, "_SUN", NULL, &sun);
	if (FUNC0(status)) {
		/*
		 * use the count of the number of slots we've found
		 * for the number of the slot
		 */
		sun = bridge->nr_slots+1;
	}

	/* search for objects that share the same slot */
	for (slot = bridge->slots; slot; slot = slot->next)
		if (slot->device == device) {
			if (slot->sun != sun)
				FUNC21("sibling found, but _SUN doesn't match!\n");
			break;
		}

	if (!slot) {
		slot = FUNC13(sizeof(struct acpiphp_slot), GFP_KERNEL);
		if (!slot) {
			FUNC12(newfunc);
			return AE_NO_MEMORY;
		}

		slot->bridge = bridge;
		slot->device = device;
		slot->sun = sun;
		FUNC2(&slot->funcs);
		FUNC15(&slot->crit_sect);

		slot->next = bridge->slots;
		bridge->slots = slot;

		bridge->nr_slots++;

		FUNC9("found ACPI PCI Hotplug slot %llu at PCI %04x:%02x:%02x\n",
		    slot->sun, FUNC17(pbus), pbus->number, device);
		retval = FUNC8(slot);
		if (retval) {
			if (retval == -EBUSY)
				FUNC21("Slot %llu already registered by another "
					"hotplug driver\n", slot->sun);
			else
				FUNC21("acpiphp_register_hotplug_slot failed "
					"(err code = 0x%x)\n", retval);
			goto err_exit;
		}
	}

	newfunc->slot = slot;
	FUNC14(&newfunc->sibling, &slot->funcs);

	pdev = FUNC18(pbus, FUNC3(device, function));
	if (pdev) {
		slot->flags |= (SLOT_ENABLED | SLOT_POWEREDON);
		FUNC16(pdev);
	}

	if (FUNC11(handle)) {
		/* we don't want to call this device's _EJ0
		 * because we want the dock notify handler
		 * to call it after it calls _DCK
		 */
		newfunc->flags &= ~FUNC_HAS_EJ0;
		if (FUNC20(handle,
			&acpiphp_dock_ops, newfunc))
			FUNC9("failed to register dock device\n");

		/* we need to be notified when dock events happen
		 * outside of the hotplug operation, since we may
		 * need to do fixups before we can hotplug.
		 */
		newfunc->nb.notifier_call = post_dock_fixups;
		if (FUNC19(&newfunc->nb))
			FUNC9("failed to register a dock notifier");
	}

	/* install notify handler */
	if (!(newfunc->flags & FUNC_HAS_DCK)) {
		status = FUNC6(handle,
					     ACPI_SYSTEM_NOTIFY,
					     handle_hotplug_event_func,
					     newfunc);

		if (FUNC0(status))
			FUNC10("failed to register interrupt notify handler\n");
	} else
		status = AE_OK;

	return status;

 err_exit:
	bridge->nr_slots--;
	bridge->slots = slot->next;
	FUNC12(slot);
	FUNC12(newfunc);

	return AE_OK;
}