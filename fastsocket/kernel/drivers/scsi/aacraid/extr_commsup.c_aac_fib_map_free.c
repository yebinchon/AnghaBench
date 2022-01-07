
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {int max_fib_size; scalar_t__ hw_fib_pa; int * hw_fib_va; TYPE_1__* scsi_host_ptr; int pdev; } ;
struct TYPE_2__ {int can_queue; } ;


 int AAC_NUM_MGT_FIB ;
 int pci_free_consistent (int ,int,int *,scalar_t__) ;

void aac_fib_map_free(struct aac_dev *dev)
{
 pci_free_consistent(dev->pdev,
   dev->max_fib_size * (dev->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB),
   dev->hw_fib_va, dev->hw_fib_pa);
 dev->hw_fib_va = ((void*)0);
 dev->hw_fib_pa = 0;
}
