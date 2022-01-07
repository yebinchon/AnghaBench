
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__** drv; TYPE_1__* pdev; scalar_t__* gendisk; } ;
typedef TYPE_3__ ctlr_info_t ;
struct TYPE_10__ {scalar_t__ busy_configuring; int LunID; } ;
struct TYPE_9__ {int dev; } ;


 int NWD_SHIFT ;
 scalar_t__ alloc_disk (int) ;
 int cciss_alloc_drive_info (TYPE_3__*,int) ;
 scalar_t__ cciss_create_ld_sysfs_entry (TYPE_3__*,int) ;
 int cciss_free_drive_info (TYPE_3__*,int) ;
 int cciss_free_gendisk (TYPE_3__*,int) ;
 int dev_err (int *,char*,int) ;
 int memcpy (int ,unsigned char*,int) ;
 int wmb () ;

__attribute__((used)) static int cciss_add_gendisk(ctlr_info_t *h, unsigned char lunid[],
 int controller_node)
{
 int drv_index;

 drv_index = cciss_alloc_drive_info(h, controller_node);
 if (drv_index == -1)
  return -1;


 if (!h->gendisk[drv_index]) {
  h->gendisk[drv_index] =
   alloc_disk(1 << NWD_SHIFT);
  if (!h->gendisk[drv_index]) {
   dev_err(&h->pdev->dev,
    "could not allocate a new disk %d\n",
    drv_index);
   goto err_free_drive_info;
  }
 }
 memcpy(h->drv[drv_index]->LunID, lunid,
  sizeof(h->drv[drv_index]->LunID));
 if (cciss_create_ld_sysfs_entry(h, drv_index))
  goto err_free_disk;



 h->drv[drv_index]->busy_configuring = 0;
 wmb();
 return drv_index;

err_free_disk:
 cciss_free_gendisk(h, drv_index);
err_free_drive_info:
 cciss_free_drive_info(h, drv_index);
 return -1;
}
