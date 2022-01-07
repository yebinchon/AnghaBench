
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ps3_storage_device {size_t region_idx; int blk_size; TYPE_1__* regions; } ;
struct file {scalar_t__ f_pos; TYPE_2__* f_mapping; } ;
typedef scalar_t__ loff_t ;
struct TYPE_6__ {int i_mutex; } ;
struct TYPE_5__ {TYPE_3__* host; } ;
struct TYPE_4__ {int size; } ;


 scalar_t__ EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ps3_storage_device* ps3flash_dev ;

__attribute__((used)) static loff_t ps3flash_llseek(struct file *file, loff_t offset, int origin)
{
 struct ps3_storage_device *dev = ps3flash_dev;
 loff_t res;

 mutex_lock(&file->f_mapping->host->i_mutex);
 switch (origin) {
 case 1:
  offset += file->f_pos;
  break;
 case 2:
  offset += dev->regions[dev->region_idx].size*dev->blk_size;
  break;
 }
 if (offset < 0) {
  res = -EINVAL;
  goto out;
 }

 file->f_pos = offset;
 res = file->f_pos;

out:
 mutex_unlock(&file->f_mapping->host->i_mutex);
 return res;
}
