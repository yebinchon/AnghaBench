
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_3__ {int d_inode; } ;


 int lock_kernel () ;
 int unlock_kernel () ;
 long viotap_ioctl (int ,struct file*,unsigned int,unsigned long) ;

__attribute__((used)) static long viotap_unlocked_ioctl(struct file *file,
  unsigned int cmd, unsigned long arg)
{
 long rc;

 lock_kernel();
 rc = viotap_ioctl(file->f_path.dentry->d_inode, file, cmd, arg);
 unlock_kernel();
 return rc;
}
