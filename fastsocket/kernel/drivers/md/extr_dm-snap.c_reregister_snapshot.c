
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_snapshot {int list; TYPE_1__* origin; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {struct block_device* bdev; } ;


 int __insert_snapshot (int ,struct dm_snapshot*) ;
 int __lookup_origin (struct block_device*) ;
 int _origins_lock ;
 int down_write (int *) ;
 int list_del (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void reregister_snapshot(struct dm_snapshot *s)
{
 struct block_device *bdev = s->origin->bdev;

 down_write(&_origins_lock);

 list_del(&s->list);
 __insert_snapshot(__lookup_origin(bdev), s);

 up_write(&_origins_lock);
}
