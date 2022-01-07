
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int smp_resp; int smp_req; } ;
struct sas_task {TYPE_2__ smp_task; } ;
struct asd_ascb {TYPE_1__* ha; struct sas_task* uldd_task; } ;
struct TYPE_3__ {int pcidev; } ;


 int BUG_ON (int) ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int pci_unmap_sg (int ,int *,int,int ) ;

__attribute__((used)) static void asd_unbuild_smp_ascb(struct asd_ascb *a)
{
 struct sas_task *task = a->uldd_task;

 BUG_ON(!task);
 pci_unmap_sg(a->ha->pcidev, &task->smp_task.smp_req, 1,
       PCI_DMA_TODEVICE);
 pci_unmap_sg(a->ha->pcidev, &task->smp_task.smp_resp, 1,
       PCI_DMA_FROMDEVICE);
}
