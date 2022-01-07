
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int subordinate; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_DEVICE ;
 int AE_OK ;
 struct pci_dev* acpi_get_pci_dev (int ) ;
 int acpi_walk_namespace (int ,int ,int ,int (*) (int ,int ,void*,void**),int *,int *) ;
 int add_p2p_bridge (int ) ;
 int dbg (char*,int ) ;
 scalar_t__ detect_ejectable_slots (int ) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int warn (char*,int ) ;

__attribute__((used)) static acpi_status
find_p2p_bridge(acpi_handle handle, u32 lvl, void *context, void **rv)
{
 acpi_status status;
 struct pci_dev *dev;

 dev = acpi_get_pci_dev(handle);
 if (!dev || !dev->subordinate)
  goto out;


 if ((detect_ejectable_slots(handle) > 0)) {
  dbg("found PCI-to-PCI bridge at PCI %s\n", pci_name(dev));
  add_p2p_bridge(handle);
 }


 status = acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, (u32)1,
         find_p2p_bridge, ((void*)0), ((void*)0));
 if (ACPI_FAILURE(status))
  warn("find_p2p_bridge failed (error code = 0x%x)\n", status);

 out:
 pci_dev_put(dev);
 return AE_OK;
}
