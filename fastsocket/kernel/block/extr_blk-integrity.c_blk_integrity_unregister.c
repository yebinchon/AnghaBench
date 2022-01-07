
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gendisk {struct blk_integrity* integrity; TYPE_2__* queue; } ;
struct blk_integrity {int kobj; } ;
struct TYPE_3__ {int capabilities; } ;
struct TYPE_4__ {TYPE_1__ backing_dev_info; } ;


 int BDI_CAP_STABLE_WRITES ;
 int KOBJ_REMOVE ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;

void blk_integrity_unregister(struct gendisk *disk)
{
 struct blk_integrity *bi;

 if (!disk || !disk->integrity)
  return;

 disk->queue->backing_dev_info.capabilities &= ~BDI_CAP_STABLE_WRITES;

 bi = disk->integrity;

 kobject_uevent(&bi->kobj, KOBJ_REMOVE);
 kobject_del(&bi->kobj);
 kobject_put(&bi->kobj);
 disk->integrity = ((void*)0);
}
