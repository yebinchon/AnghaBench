
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {struct dm_dev* private; } ;
struct dm_dev {int dummy; } ;


 int dm_put_device (struct dm_target*,struct dm_dev*) ;

__attribute__((used)) static void origin_dtr(struct dm_target *ti)
{
 struct dm_dev *dev = ti->private;
 dm_put_device(ti, dev);
}
