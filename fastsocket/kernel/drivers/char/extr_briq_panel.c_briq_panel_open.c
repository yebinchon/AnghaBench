
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int vfd_is_open ;

__attribute__((used)) static int briq_panel_open(struct inode *ino, struct file *filep)
{
 lock_kernel();

 if (vfd_is_open) {
  unlock_kernel();
  return -EBUSY;
 }
 vfd_is_open = 1;

 unlock_kernel();
 return 0;
}
