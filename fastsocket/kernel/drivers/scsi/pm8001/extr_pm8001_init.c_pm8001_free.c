
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* region; } ;
struct pm8001_hba_info {struct pm8001_hba_info* tags; scalar_t__ shost; TYPE_2__ memoryMap; int pdev; } ;
struct TYPE_6__ {int (* chip_iounmap ) (struct pm8001_hba_info*) ;} ;
struct TYPE_4__ {int phys_addr; int * virt_ptr; scalar_t__ alignment; scalar_t__ total_len; } ;


 TYPE_3__* PM8001_CHIP_DISP ;
 int USI_MAX_MEMCNT ;
 int flush_workqueue (int ) ;
 int kfree (struct pm8001_hba_info*) ;
 int pci_free_consistent (int ,scalar_t__,int *,int ) ;
 int pm8001_wq ;
 int scsi_host_put (scalar_t__) ;
 int stub1 (struct pm8001_hba_info*) ;

__attribute__((used)) static void pm8001_free(struct pm8001_hba_info *pm8001_ha)
{
 int i;

 if (!pm8001_ha)
  return;

 for (i = 0; i < USI_MAX_MEMCNT; i++) {
  if (pm8001_ha->memoryMap.region[i].virt_ptr != ((void*)0)) {
   pci_free_consistent(pm8001_ha->pdev,
    (pm8001_ha->memoryMap.region[i].total_len +
    pm8001_ha->memoryMap.region[i].alignment),
    pm8001_ha->memoryMap.region[i].virt_ptr,
    pm8001_ha->memoryMap.region[i].phys_addr);
   }
 }
 PM8001_CHIP_DISP->chip_iounmap(pm8001_ha);
 if (pm8001_ha->shost)
  scsi_host_put(pm8001_ha->shost);
 flush_workqueue(pm8001_wq);
 kfree(pm8001_ha->tags);
 kfree(pm8001_ha);
}
