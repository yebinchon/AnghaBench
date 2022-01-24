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
struct pci_bus {int /*<<< orphan*/  number; } ;
struct TYPE_2__ {int device; int /*<<< orphan*/  bus; int /*<<< orphan*/  segment; } ;
struct acpi_prt_entry {int /*<<< orphan*/  list; int /*<<< orphan*/  index; scalar_t__ pin; TYPE_1__ id; int /*<<< orphan*/  link; } ;
struct acpi_pci_routing_table {int address; scalar_t__* source; int /*<<< orphan*/  source_index; scalar_t__ pin; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_prt_list ; 
 int /*<<< orphan*/  acpi_prt_lock ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_prt_entry*,struct acpi_pci_routing_table*) ; 
 struct acpi_prt_entry* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(acpi_handle handle, struct pci_bus *bus,
				  struct acpi_pci_routing_table *prt)
{
	struct acpi_prt_entry *entry;

	entry = FUNC3(sizeof(struct acpi_prt_entry), GFP_KERNEL);
	if (!entry)
		return -ENOMEM;

	/*
	 * Note that the _PRT uses 0=INTA, 1=INTB, etc, while PCI uses
	 * 1=INTA, 2=INTB.  We use the PCI encoding throughout, so convert
	 * it here.
	 */
	entry->id.segment = FUNC5(bus);
	entry->id.bus = bus->number;
	entry->id.device = (prt->address >> 16) & 0xFFFF;
	entry->pin = prt->pin + 1;

	FUNC2(entry, prt);

	entry->index = prt->source_index;

	/*
	 * Type 1: Dynamic
	 * ---------------
	 * The 'source' field specifies the PCI interrupt link device used to
	 * configure the IRQ assigned to this slot|dev|pin.  The 'source_index'
	 * indicates which resource descriptor in the resource template (of
	 * the link device) this interrupt is allocated from.
	 * 
	 * NOTE: Don't query the Link Device for IRQ information at this time
	 *       because Link Device enumeration may not have occurred yet
	 *       (e.g. exists somewhere 'below' this _PRT entry in the ACPI
	 *       namespace).
	 */
	if (prt->source[0])
		FUNC1(handle, prt->source, &entry->link);

	/*
	 * Type 2: Static
	 * --------------
	 * The 'source' field is NULL, and the 'source_index' field specifies
	 * the IRQ value, which is hardwired to specific interrupt inputs on
	 * the interrupt controller.
	 */

	FUNC0((ACPI_DB_INFO,
			      "      %04x:%02x:%02x[%c] -> %s[%d]\n",
			      entry->id.segment, entry->id.bus,
			      entry->id.device, FUNC6(entry->pin),
			      prt->source, entry->index));

	FUNC7(&acpi_prt_lock);
	FUNC4(&entry->list, &acpi_prt_list);
	FUNC8(&acpi_prt_lock);

	return 0;
}