
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int dev_flags; scalar_t__ media; } ;
typedef TYPE_1__ ide_drive_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int EOVERFLOW ;
 int IDE_DFLAG_NO_UNLOAD ;
 int IDE_DFLAG_PARKED ;
 long MAX_PARK_TIMEOUT ;
 scalar_t__ ide_disk ;
 int ide_setting_mtx ;
 int issue_park_cmd (TYPE_1__*,int ) ;
 int msecs_to_jiffies (long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strict_strtol (char const*,int,long*) ;
 TYPE_1__* to_ide_device (struct device*) ;

ssize_t ide_park_store(struct device *dev, struct device_attribute *attr,
         const char *buf, size_t len)
{

 ide_drive_t *drive = to_ide_device(dev);
 long int input;
 int rc;

 rc = strict_strtol(buf, 10, &input);
 if (rc || input < -2)
  return -EINVAL;
 if (input > 30000) {
  input = 30000;
  rc = -EOVERFLOW;
 }

 mutex_lock(&ide_setting_mtx);
 if (input >= 0) {
  if (drive->dev_flags & IDE_DFLAG_NO_UNLOAD)
   rc = -EOPNOTSUPP;
  else if (input || drive->dev_flags & IDE_DFLAG_PARKED)
   issue_park_cmd(drive, msecs_to_jiffies(input));
 } else {
  if (drive->media == ide_disk)
   switch (input) {
   case -1:
    drive->dev_flags &= ~IDE_DFLAG_NO_UNLOAD;
    break;
   case -2:
    drive->dev_flags |= IDE_DFLAG_NO_UNLOAD;
    break;
   }
  else
   rc = -EOPNOTSUPP;
 }
 mutex_unlock(&ide_setting_mtx);

 return rc ? rc : len;
}
