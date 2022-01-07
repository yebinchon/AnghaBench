
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int * private_data; } ;


 int EBUSY ;
 int lock_kernel () ;
 int nonseekable_open (struct inode*,struct file*) ;
 int opened ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int maint_open(struct inode *ino, struct file *filep)
{
 int ret;

 lock_kernel();


 if (test_and_set_bit(0, &opened))
  ret = -EBUSY;
 else {
  filep->private_data = ((void*)0);
  ret = nonseekable_open(ino, filep);
 }
 unlock_kernel();
 return ret;
}
