
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_block_device {scalar_t__ media_change_flag; } ;
struct gendisk {struct i2o_block_device* private_data; } ;



__attribute__((used)) static int i2o_block_media_changed(struct gendisk *disk)
{
 struct i2o_block_device *p = disk->private_data;

 if (p->media_change_flag) {
  p->media_change_flag = 0;
  return 1;
 }
 return 0;
}
