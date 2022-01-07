
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct igb_adapter {struct pci_dev* pdev; } ;


 int dev_err (int *,char*) ;
 int igb_alloc_q_vectors (struct igb_adapter*) ;
 int igb_cache_ring_register (struct igb_adapter*) ;
 int igb_reset_interrupt_capability (struct igb_adapter*) ;
 int igb_set_interrupt_capability (struct igb_adapter*,int) ;

__attribute__((used)) static int igb_init_interrupt_scheme(struct igb_adapter *adapter, bool msix)
{
 struct pci_dev *pdev = adapter->pdev;
 int err;

 igb_set_interrupt_capability(adapter, msix);

 err = igb_alloc_q_vectors(adapter);
 if (err) {
  dev_err(&pdev->dev, "Unable to allocate memory for vectors\n");
  goto err_alloc_q_vectors;
 }

 igb_cache_ring_register(adapter);

 return 0;

err_alloc_q_vectors:
 igb_reset_interrupt_capability(adapter);
 return err;
}
