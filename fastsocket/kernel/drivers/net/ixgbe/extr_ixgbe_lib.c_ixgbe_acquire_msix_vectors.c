
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int max_q_vectors; int num_q_vectors; int flags; int * msix_entries; int netdev; int pdev; } ;


 int IXGBE_FLAG_MSIX_ENABLED ;
 int KERN_DEBUG ;
 int MIN_MSIX_COUNT ;
 scalar_t__ NON_Q_VECTORS ;
 int hw ;
 int kfree (int *) ;
 int min (int,int ) ;
 int netif_printk (struct ixgbe_adapter*,int ,int ,int ,char*) ;
 int pci_enable_msix (int ,int *,int) ;

__attribute__((used)) static void ixgbe_acquire_msix_vectors(struct ixgbe_adapter *adapter,
           int vectors)
{
 int err, vector_threshold;





 vector_threshold = MIN_MSIX_COUNT;







 while (vectors >= vector_threshold) {
  err = pci_enable_msix(adapter->pdev, adapter->msix_entries,
          vectors);
  if (!err)
   break;
  else if (err < 0)
   vectors = 0;
  else
   vectors = err;
 }

 if (vectors < vector_threshold) {




  netif_printk(adapter, hw, KERN_DEBUG, adapter->netdev,
        "Unable to allocate MSI-X interrupts\n");
  adapter->flags &= ~IXGBE_FLAG_MSIX_ENABLED;
  kfree(adapter->msix_entries);
  adapter->msix_entries = ((void*)0);
 } else {
  adapter->flags |= IXGBE_FLAG_MSIX_ENABLED;





  vectors -= NON_Q_VECTORS;
  adapter->num_q_vectors = min(vectors, adapter->max_q_vectors);
 }
}
