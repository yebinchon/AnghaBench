
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {int options; int use_count; TYPE_1__* ops; int name; scalar_t__ media_written; } ;
struct block_device {int dummy; } ;
typedef int fmode_t ;
struct TYPE_2__ {int (* open ) (struct cdrom_device_info*,int) ;int (* release ) (struct cdrom_device_info*) ;int (* lock_door ) (struct cdrom_device_info*,int ) ;} ;


 int CDC_LOCK ;
 int CDC_RAM ;
 int CDO_LOCK ;
 int CDO_USE_FFLAGS ;
 scalar_t__ CDROM_CAN (int ) ;
 int CD_OPEN ;
 int EROFS ;
 int FMODE_NDELAY ;
 int FMODE_WRITE ;
 int cdinfo (int ,char*,...) ;
 int cdrom_mmc3_profile (struct cdrom_device_info*) ;
 scalar_t__ cdrom_open_write (struct cdrom_device_info*) ;
 int check_disk_change (struct block_device*) ;
 int open_for_data (struct cdrom_device_info*) ;
 int stub1 (struct cdrom_device_info*,int) ;
 int stub2 (struct cdrom_device_info*,int ) ;
 int stub3 (struct cdrom_device_info*) ;

int cdrom_open(struct cdrom_device_info *cdi, struct block_device *bdev, fmode_t mode)
{
 int ret;

 cdinfo(CD_OPEN, "entering cdrom_open\n");



 cdi->use_count++;
 if ((mode & FMODE_NDELAY) && (cdi->options & CDO_USE_FFLAGS)) {
  ret = cdi->ops->open(cdi, 1);
 } else {
  ret = open_for_data(cdi);
  if (ret)
   goto err;
  cdrom_mmc3_profile(cdi);
  if (mode & FMODE_WRITE) {
   ret = -EROFS;
   if (cdrom_open_write(cdi))
    goto err_release;
   if (!CDROM_CAN(CDC_RAM))
    goto err_release;
   ret = 0;
   cdi->media_written = 0;
  }
 }

 if (ret)
  goto err;

 cdinfo(CD_OPEN, "Use count for \"/dev/%s\" now %d\n",
   cdi->name, cdi->use_count);


 check_disk_change(bdev);
 return 0;
err_release:
 if (CDROM_CAN(CDC_LOCK) && cdi->options & CDO_LOCK) {
  cdi->ops->lock_door(cdi, 0);
  cdinfo(CD_OPEN, "door unlocked.\n");
 }
 cdi->ops->release(cdi);
err:
 cdi->use_count--;
 return ret;
}
