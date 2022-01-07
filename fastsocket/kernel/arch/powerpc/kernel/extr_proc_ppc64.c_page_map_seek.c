
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proc_dir_entry {scalar_t__ size; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {scalar_t__ f_pos; TYPE_2__ f_path; } ;
typedef scalar_t__ loff_t ;
struct TYPE_3__ {int d_inode; } ;


 scalar_t__ EINVAL ;
 struct proc_dir_entry* PDE (int ) ;

__attribute__((used)) static loff_t page_map_seek( struct file *file, loff_t off, int whence)
{
 loff_t new;
 struct proc_dir_entry *dp = PDE(file->f_path.dentry->d_inode);

 switch(whence) {
 case 0:
  new = off;
  break;
 case 1:
  new = file->f_pos + off;
  break;
 case 2:
  new = dp->size + off;
  break;
 default:
  return -EINVAL;
 }
 if ( new < 0 || new > dp->size )
  return -EINVAL;
 return (file->f_pos = new);
}
