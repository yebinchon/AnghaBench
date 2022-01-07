
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_inode; } ;


 int cdev_index (int ) ;

__attribute__((used)) static inline unsigned char ieee1394_file_to_instance(struct file *file)
{
 int idx = cdev_index(file->f_path.dentry->d_inode);
 if (idx < 0)
  idx = 0;
 return idx;
}
