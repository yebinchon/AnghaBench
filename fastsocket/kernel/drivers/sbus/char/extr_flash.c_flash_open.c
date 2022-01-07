
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int busy; } ;


 int EBUSY ;
 TYPE_1__ flash ;
 int lock_kernel () ;
 scalar_t__ test_and_set_bit (int ,void*) ;
 int unlock_kernel () ;

__attribute__((used)) static int
flash_open(struct inode *inode, struct file *file)
{
 lock_kernel();
 if (test_and_set_bit(0, (void *)&flash.busy) != 0) {
  unlock_kernel();
  return -EBUSY;
 }

 unlock_kernel();
 return 0;
}
