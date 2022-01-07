
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {struct pci_bus* subordinate; } ;
struct pci_bus {int number; } ;
struct callback_args {int root_handle; int (* user_function ) (int ,int ,void*,void**) ;struct pci_bus* pci_bus; } ;
typedef int (* acpi_walk_callback ) (int ,int ,void*,void**) ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_DEVICE ;
 int AE_OK ;
 int PCI_DEVFN (int,int) ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_get_handle (int ,char*,int *) ;
 int acpi_walk_namespace (int ,int ,int ,int (*) (int ,int ,void*,void**),struct callback_args*,int *) ;
 int dbg (char*,int ) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (struct pci_bus*,int ) ;

__attribute__((used)) static acpi_status
walk_p2p_bridge(acpi_handle handle, u32 lvl, void *context, void **rv)
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

 status = acpi_get_handle(handle, "_ADR", &dummy_handle);
 if (ACPI_FAILURE(status))
  return AE_OK;

 status = acpi_evaluate_integer(handle, "_ADR", ((void*)0), &adr);
 if (ACPI_FAILURE(status))
  return AE_OK;

 device = (adr >> 16) & 0xffff;
 function = adr & 0xffff;

 dev = pci_get_slot(pci_bus, PCI_DEVFN(device, function));
 if (!dev || !dev->subordinate)
  goto out;

 child_context.pci_bus = dev->subordinate;
 child_context.user_function = user_function;
 child_context.root_handle = parent_context->root_handle;

 dbg("p2p bridge walk, pci_bus = %x\n", dev->subordinate->number);
 status = acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, (u32)1,
         user_function, &child_context, ((void*)0));
 if (ACPI_FAILURE(status))
  goto out;

 status = acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, (u32)1,
         walk_p2p_bridge, &child_context, ((void*)0));
out:
 pci_dev_put(dev);
 return AE_OK;
}
