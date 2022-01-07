
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ub_lun {scalar_t__ readonly; scalar_t__ changed; scalar_t__ removable; struct ub_dev* udev; } ;
struct ub_dev {int openc; int poison; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct ub_lun* private_data; } ;


 int ENOMEDIUM ;
 int ENXIO ;
 int EROFS ;
 int FMODE_NDELAY ;
 int FMODE_WRITE ;
 scalar_t__ atomic_read (int *) ;
 int check_disk_change (struct block_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ub_lock ;
 int ub_put (struct ub_dev*) ;

__attribute__((used)) static int ub_bd_open(struct block_device *bdev, fmode_t mode)
{
 struct ub_lun *lun = bdev->bd_disk->private_data;
 struct ub_dev *sc = lun->udev;
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&ub_lock, flags);
 if (atomic_read(&sc->poison)) {
  spin_unlock_irqrestore(&ub_lock, flags);
  return -ENXIO;
 }
 sc->openc++;
 spin_unlock_irqrestore(&ub_lock, flags);

 if (lun->removable || lun->readonly)
  check_disk_change(bdev);






 if (lun->removable && lun->changed && !(mode & FMODE_NDELAY)) {
  rc = -ENOMEDIUM;
  goto err_open;
 }

 if (lun->readonly && (mode & FMODE_WRITE)) {
  rc = -EROFS;
  goto err_open;
 }

 return 0;

err_open:
 ub_put(sc);
 return rc;
}
