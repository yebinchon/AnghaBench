
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int atomic_inc (int *) ;
 int lock_kernel () ;
 int unlock_kernel () ;
 int zcrypt_open_count ;

__attribute__((used)) static int zcrypt_open(struct inode *inode, struct file *filp)
{
 lock_kernel();
 atomic_inc(&zcrypt_open_count);
 unlock_kernel();
 return 0;
}
