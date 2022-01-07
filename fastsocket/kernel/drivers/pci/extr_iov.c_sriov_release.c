
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* sriov; } ;
struct TYPE_2__ {int lock; struct pci_dev* dev; int nr_virtfn; } ;


 int BUG_ON (int ) ;
 int kfree (TYPE_1__*) ;
 int mutex_destroy (int *) ;
 int pci_dev_put (struct pci_dev*) ;

__attribute__((used)) static void sriov_release(struct pci_dev *dev)
{
 BUG_ON(dev->sriov->nr_virtfn);

 if (dev != dev->sriov->dev)
  pci_dev_put(dev->sriov->dev);

 mutex_destroy(&dev->sriov->lock);

 kfree(dev->sriov);
 dev->sriov = ((void*)0);
}
