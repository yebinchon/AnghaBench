
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {int lo_disk; int lo_backing_file; } ;
typedef scalar_t__ sector_t ;
typedef scalar_t__ loff_t ;


 int EFBIG ;
 scalar_t__ get_loop_size (struct loop_device*,int ) ;
 int set_capacity (int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
figure_loop_size(struct loop_device *lo)
{
 loff_t size = get_loop_size(lo, lo->lo_backing_file);
 sector_t x = (sector_t)size;

 if (unlikely((loff_t)x != size))
  return -EFBIG;

 set_capacity(lo->lo_disk, x);
 return 0;
}
