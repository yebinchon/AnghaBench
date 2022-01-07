
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct block_device {int bd_dev; TYPE_5__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_9__ {scalar_t__ heads; int usage_count; int LunID; scalar_t__ busy_configuring; } ;
typedef TYPE_2__ drive_info_struct ;
struct TYPE_10__ {int usage_count; TYPE_1__* pdev; } ;
typedef TYPE_3__ ctlr_info_t ;
struct TYPE_11__ {int disk_name; } ;
struct TYPE_8__ {int dev; } ;


 int CAP_SYS_ADMIN ;
 int CTLR_LUNID ;
 int EBUSY ;
 int ENXIO ;
 int EPERM ;
 int MINOR (int ) ;
 int capable (int ) ;
 int dev_dbg (int *,char*,int ) ;
 TYPE_2__* get_drv (TYPE_5__*) ;
 TYPE_3__* get_host (TYPE_5__*) ;
 scalar_t__ memcmp (int ,int ,int) ;

__attribute__((used)) static int cciss_open(struct block_device *bdev, fmode_t mode)
{
 ctlr_info_t *h = get_host(bdev->bd_disk);
 drive_info_struct *drv = get_drv(bdev->bd_disk);

 dev_dbg(&h->pdev->dev, "cciss_open %s\n", bdev->bd_disk->disk_name);
 if (drv->busy_configuring)
  return -EBUSY;
 if (drv->heads == 0) {
  if (MINOR(bdev->bd_dev) != 0) {

   if (MINOR(bdev->bd_dev) & 0x0f) {
    return -ENXIO;

   } else if (memcmp(drv->LunID, CTLR_LUNID,
    sizeof(drv->LunID))) {
    return -ENXIO;
   }
  }
  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;
 }
 drv->usage_count++;
 h->usage_count++;
 return 0;
}
