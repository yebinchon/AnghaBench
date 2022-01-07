
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gendisk {int dummy; } ;
struct dasd_device {TYPE_2__* discipline; TYPE_1__* block; } ;
typedef int fmode_t ;
struct TYPE_4__ {int owner; } ;
struct TYPE_3__ {int open_count; } ;


 int ENODEV ;
 int atomic_dec (int *) ;
 struct dasd_device* dasd_device_from_gendisk (struct gendisk*) ;
 int dasd_put_device (struct dasd_device*) ;
 int module_put (int ) ;

__attribute__((used)) static int dasd_release(struct gendisk *disk, fmode_t mode)
{
 struct dasd_device *base;

 base = dasd_device_from_gendisk(disk);
 if (!base)
  return -ENODEV;

 atomic_dec(&base->block->open_count);
 module_put(base->discipline->owner);
 dasd_put_device(base);
 return 0;
}
