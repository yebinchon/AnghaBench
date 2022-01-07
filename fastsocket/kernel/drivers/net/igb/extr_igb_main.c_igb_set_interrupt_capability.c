
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct msix_entry {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int num_rx_queues; int rss_queues; int num_tx_queues; int flags; int num_q_vectors; TYPE_1__* pdev; scalar_t__ vfs_allocated_count; int * vf_data; struct e1000_hw hw; TYPE_2__* msix_entries; } ;
struct TYPE_7__ {int entry; } ;
struct TYPE_6__ {int dev; } ;


 int E1000_IOVCTL ;
 int E1000_IOVCTL_REUSE_VFQ ;
 int GFP_KERNEL ;
 int IGB_FLAG_HAS_MSI ;
 int IGB_FLAG_QUEUE_PAIRS ;
 int dev_info (int *,char*) ;
 int igb_reset_interrupt_capability (struct igb_adapter*) ;
 TYPE_2__* kcalloc (int,int,int ) ;
 int kfree (int *) ;
 int msleep (int) ;
 int pci_disable_sriov (TYPE_1__*) ;
 int pci_enable_msi (TYPE_1__*) ;
 int pci_enable_msix (TYPE_1__*,TYPE_2__*,int) ;
 int wr32 (int ,int ) ;
 int wrfl () ;

__attribute__((used)) static void igb_set_interrupt_capability(struct igb_adapter *adapter, bool msix)
{
 int err;
 int numvecs, i;

 if (!msix)
  goto msi_only;


 adapter->num_rx_queues = adapter->rss_queues;
 if (adapter->vfs_allocated_count)
  adapter->num_tx_queues = 1;
 else
  adapter->num_tx_queues = adapter->rss_queues;


 numvecs = adapter->num_rx_queues;


 if (!(adapter->flags & IGB_FLAG_QUEUE_PAIRS))
  numvecs += adapter->num_tx_queues;


 adapter->num_q_vectors = numvecs;


 numvecs++;
 adapter->msix_entries = kcalloc(numvecs, sizeof(struct msix_entry),
     GFP_KERNEL);

 if (!adapter->msix_entries)
  goto msi_only;

 for (i = 0; i < numvecs; i++)
  adapter->msix_entries[i].entry = i;

 err = pci_enable_msix(adapter->pdev,
         adapter->msix_entries,
         numvecs);
 if (err == 0)
  return;

 igb_reset_interrupt_capability(adapter);


msi_only:
 adapter->vfs_allocated_count = 0;
 adapter->rss_queues = 1;
 adapter->flags |= IGB_FLAG_QUEUE_PAIRS;
 adapter->num_rx_queues = 1;
 adapter->num_tx_queues = 1;
 adapter->num_q_vectors = 1;
 if (!pci_enable_msi(adapter->pdev))
  adapter->flags |= IGB_FLAG_HAS_MSI;
}
