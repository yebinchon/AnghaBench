
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* sriov; int is_physfn; } ;
struct TYPE_2__ {int nr_virtfn; } ;



int pci_num_vf(struct pci_dev *dev)
{
 if (!dev || !dev->is_physfn)
  return 0;
 else
  return dev->sriov->nr_virtfn;
}
