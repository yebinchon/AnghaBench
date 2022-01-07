
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mapped_device {int dummy; } ;
struct TYPE_3__ {int mode; TYPE_2__* bdev; } ;
struct dm_dev_internal {TYPE_1__ dm_dev; } ;
typedef int fmode_t ;
struct TYPE_4__ {int bd_dev; } ;


 int close_dev (struct dm_dev_internal*,struct mapped_device*) ;
 int open_dev (struct dm_dev_internal*,int ,struct mapped_device*) ;

__attribute__((used)) static int upgrade_mode(struct dm_dev_internal *dd, fmode_t new_mode,
   struct mapped_device *md)
{
 int r;
 struct dm_dev_internal dd_new, dd_old;

 dd_new = dd_old = *dd;

 dd_new.dm_dev.mode |= new_mode;
 dd_new.dm_dev.bdev = ((void*)0);

 r = open_dev(&dd_new, dd->dm_dev.bdev->bd_dev, md);
 if (r)
  return r;

 dd->dm_dev.mode |= new_mode;
 close_dev(&dd_old, md);

 return 0;
}
