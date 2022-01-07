
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int lock_kernel () ;
 scalar_t__ rtc_status ;
 int unlock_kernel () ;

__attribute__((used)) static int rtc_release(struct inode *inode, struct file *file)
{
 lock_kernel();
 rtc_status = 0;
 unlock_kernel();
 return 0;
}
