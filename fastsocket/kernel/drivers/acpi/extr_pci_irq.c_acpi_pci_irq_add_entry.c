
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_bus {int number; } ;
struct TYPE_2__ {int device; int bus; int segment; } ;
struct acpi_prt_entry {int list; int index; scalar_t__ pin; TYPE_1__ id; int link; } ;
struct acpi_pci_routing_table {int address; scalar_t__* source; int source_index; scalar_t__ pin; } ;
typedef int acpi_handle ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int acpi_get_handle (int ,scalar_t__*,int *) ;
 int acpi_prt_list ;
 int acpi_prt_lock ;
 int do_prt_fixups (struct acpi_prt_entry*,struct acpi_pci_routing_table*) ;
 struct acpi_prt_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pci_domain_nr (struct pci_bus*) ;
 int pin_name (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int acpi_pci_irq_add_entry(acpi_handle handle, struct pci_bus *bus,
      struct acpi_pci_routing_table *prt)
{
 struct acpi_prt_entry *entry;

 entry = kzalloc(sizeof(struct acpi_prt_entry), GFP_KERNEL);
 if (!entry)
  return -ENOMEM;






 entry->id.segment = pci_domain_nr(bus);
 entry->id.bus = bus->number;
 entry->id.device = (prt->address >> 16) & 0xFFFF;
 entry->pin = prt->pin + 1;

 do_prt_fixups(entry, prt);

 entry->index = prt->source_index;
 if (prt->source[0])
  acpi_get_handle(handle, prt->source, &entry->link);
 ACPI_DEBUG_PRINT_RAW((ACPI_DB_INFO,
         "      %04x:%02x:%02x[%c] -> %s[%d]\n",
         entry->id.segment, entry->id.bus,
         entry->id.device, pin_name(entry->pin),
         prt->source, entry->index));

 spin_lock(&acpi_prt_lock);
 list_add_tail(&entry->list, &acpi_prt_list);
 spin_unlock(&acpi_prt_lock);

 return 0;
}
