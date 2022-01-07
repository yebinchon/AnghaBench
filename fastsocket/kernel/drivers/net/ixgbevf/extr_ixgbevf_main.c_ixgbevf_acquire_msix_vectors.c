
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbevf_adapter {int num_msix_vectors; int * msix_entries; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int MIN_MSIX_COUNT ;
 int dev_err (int *,char*) ;
 int kfree (int *) ;
 int pci_enable_msix (TYPE_1__*,int *,int) ;

__attribute__((used)) static int ixgbevf_acquire_msix_vectors(struct ixgbevf_adapter *adapter,
     int vectors)
{
 int err = 0;
 int vector_threshold;





 vector_threshold = MIN_MSIX_COUNT;






 while (vectors >= vector_threshold) {
  err = pci_enable_msix(adapter->pdev, adapter->msix_entries,
          vectors);
  if (!err || err < 0)
   break;
  else
   vectors = err;
 }

 if (vectors < vector_threshold)
  err = -ENOMEM;

 if (err) {
  dev_err(&adapter->pdev->dev,
   "Unable to allocate MSI-X interrupts\n");
  kfree(adapter->msix_entries);
  adapter->msix_entries = ((void*)0);
 } else {





  adapter->num_msix_vectors = vectors;
 }

 return err;
}
