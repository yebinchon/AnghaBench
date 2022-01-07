
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct origin {int snapshots; } ;
struct dm_dev {int bdev; } ;
struct bio {int bi_sector; } ;


 int DM_MAPIO_REMAPPED ;
 struct origin* __lookup_origin (int ) ;
 int __origin_write (int *,int ,struct bio*) ;
 int _origins_lock ;
 int down_read (int *) ;
 int up_read (int *) ;

__attribute__((used)) static int do_origin(struct dm_dev *origin, struct bio *bio)
{
 struct origin *o;
 int r = DM_MAPIO_REMAPPED;

 down_read(&_origins_lock);
 o = __lookup_origin(origin->bdev);
 if (o)
  r = __origin_write(&o->snapshots, bio->bi_sector, bio);
 up_read(&_origins_lock);

 return r;
}
