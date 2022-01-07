
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int f_flags; } ;


 int O_EXCL ;
 int cpustate_get_ref (int) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int cpustate_open(struct inode *inode, struct file *file)
{
 int ret;

 lock_kernel();
 ret = cpustate_get_ref((file->f_flags & O_EXCL));
 unlock_kernel();

 return ret;
}
