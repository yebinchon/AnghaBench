
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {scalar_t__ lo_state; int lo_disk; } ;
struct block_device {int bd_mutex; } ;
typedef int sector_t ;
typedef int loff_t ;


 int ENXIO ;
 scalar_t__ Lo_bound ;
 int bd_set_size (struct block_device*,int) ;
 int figure_loop_size (struct loop_device*) ;
 int get_capacity (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int loop_set_capacity(struct loop_device *lo, struct block_device *bdev)
{
 int err;
 sector_t sec;
 loff_t sz;

 err = -ENXIO;
 if (unlikely(lo->lo_state != Lo_bound))
  goto out;
 err = figure_loop_size(lo);
 if (unlikely(err))
  goto out;
 sec = get_capacity(lo->lo_disk);

 sz = sec;
 sz <<= 9;
 mutex_lock(&bdev->bd_mutex);
 bd_set_size(bdev, sz);
 mutex_unlock(&bdev->bd_mutex);

 out:
 return err;
}
