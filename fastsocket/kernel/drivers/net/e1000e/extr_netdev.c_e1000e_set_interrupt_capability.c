
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct msix_entry {int dummy; } ;
struct e1000_adapter {int int_mode; int flags; int num_vectors; int pdev; TYPE_1__* msix_entries; } ;
struct TYPE_3__ {int entry; } ;





 int FLAG_HAS_MSIX ;
 int FLAG_MSI_ENABLED ;
 int GFP_KERNEL ;
 int e1000e_reset_interrupt_capability (struct e1000_adapter*) ;
 int e_err (char*) ;
 TYPE_1__* kcalloc (int,int,int ) ;
 int pci_enable_msi (int ) ;
 int pci_enable_msix (int ,TYPE_1__*,int) ;

void e1000e_set_interrupt_capability(struct e1000_adapter *adapter)
{
 int err;
 int i;

 switch (adapter->int_mode) {
 case 128:
  if (adapter->flags & FLAG_HAS_MSIX) {
   adapter->num_vectors = 3;
   adapter->msix_entries = kcalloc(adapter->num_vectors,
            sizeof(struct msix_entry),
            GFP_KERNEL);
   if (adapter->msix_entries) {
    for (i = 0; i < adapter->num_vectors; i++)
     adapter->msix_entries[i].entry = i;

    err = pci_enable_msix(adapter->pdev,
            adapter->msix_entries,
            adapter->num_vectors);
    if (err == 0)
     return;
   }

   e_err("Failed to initialize MSI-X interrupts.  Falling back to MSI interrupts.\n");
   e1000e_reset_interrupt_capability(adapter);
  }
  adapter->int_mode = 129;

 case 129:
  if (!pci_enable_msi(adapter->pdev)) {
   adapter->flags |= FLAG_MSI_ENABLED;
  } else {
   adapter->int_mode = 130;
   e_err("Failed to initialize MSI interrupts.  Falling back to legacy interrupts.\n");
  }

 case 130:

  break;
 }


 adapter->num_vectors = 1;
}
