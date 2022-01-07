
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct msix_entry {int dummy; } ;
struct igbvf_adapter {TYPE_1__* pdev; TYPE_2__* msix_entries; } ;
struct TYPE_5__ {int entry; } ;
struct TYPE_4__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 int igbvf_reset_interrupt_capability (struct igbvf_adapter*) ;
 TYPE_2__* kcalloc (int,int,int ) ;
 int pci_enable_msix (TYPE_1__*,TYPE_2__*,int) ;

__attribute__((used)) static void igbvf_set_interrupt_capability(struct igbvf_adapter *adapter)
{
 int err = -ENOMEM;
 int i;


 adapter->msix_entries = kcalloc(3, sizeof(struct msix_entry),
                                 GFP_KERNEL);
 if (adapter->msix_entries) {
  for (i = 0; i < 3; i++)
   adapter->msix_entries[i].entry = i;

  err = pci_enable_msix(adapter->pdev,
                        adapter->msix_entries, 3);
 }

 if (err) {

  dev_err(&adapter->pdev->dev,
          "Failed to initialize MSI-X interrupts.\n");
  igbvf_reset_interrupt_capability(adapter);
 }
}
