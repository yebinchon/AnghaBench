
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int lock_kernel () ;
 int rtc_status ;
 int unlock_kernel () ;

__attribute__((used)) static int rtc_open(struct inode *inode, struct file *file)
{
 lock_kernel();
 if(rtc_status) {
  unlock_kernel();
  return -EBUSY;
 }

 rtc_status = 1;
 unlock_kernel();
 return 0;
}
