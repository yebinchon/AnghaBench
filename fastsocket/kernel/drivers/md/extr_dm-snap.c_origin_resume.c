
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {int split_io; struct dm_dev* private; } ;
struct dm_dev {int bdev; } ;


 int get_origin_minimum_chunksize (int ) ;

__attribute__((used)) static void origin_resume(struct dm_target *ti)
{
 struct dm_dev *dev = ti->private;

 ti->split_io = get_origin_minimum_chunksize(dev->bdev);
}
