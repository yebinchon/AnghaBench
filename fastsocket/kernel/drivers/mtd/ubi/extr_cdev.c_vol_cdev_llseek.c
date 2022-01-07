
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_volume_desc {struct ubi_volume* vol; } ;
struct ubi_volume {scalar_t__ used_bytes; int vol_id; scalar_t__ updating; } ;
struct file {scalar_t__ f_pos; struct ubi_volume_desc* private_data; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ EBUSY ;
 scalar_t__ EINVAL ;
 int dbg_err (char*,...) ;
 int dbg_gen (char*,int ,scalar_t__,int,scalar_t__) ;

__attribute__((used)) static loff_t vol_cdev_llseek(struct file *file, loff_t offset, int origin)
{
 struct ubi_volume_desc *desc = file->private_data;
 struct ubi_volume *vol = desc->vol;
 loff_t new_offset;

 if (vol->updating) {

  dbg_err("updating");
  return -EBUSY;
 }

 switch (origin) {
 case 0:
  new_offset = offset;
  break;
 case 1:
  new_offset = file->f_pos + offset;
  break;
 case 2:
  new_offset = vol->used_bytes + offset;
  break;
 default:
  return -EINVAL;
 }

 if (new_offset < 0 || new_offset > vol->used_bytes) {
  dbg_err("bad seek %lld", new_offset);
  return -EINVAL;
 }

 dbg_gen("seek volume %d, offset %lld, origin %d, new offset %lld",
  vol->vol_id, offset, origin, new_offset);

 file->f_pos = new_offset;
 return new_offset;
}
