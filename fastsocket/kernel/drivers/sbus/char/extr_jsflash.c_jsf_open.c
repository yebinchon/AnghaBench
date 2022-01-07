
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ base; int busy; } ;


 int EBUSY ;
 int ENXIO ;
 TYPE_1__ jsf0 ;
 int lock_kernel () ;
 scalar_t__ test_and_set_bit (int ,void*) ;
 int unlock_kernel () ;

__attribute__((used)) static int jsf_open(struct inode * inode, struct file * filp)
{
 lock_kernel();
 if (jsf0.base == 0) {
  unlock_kernel();
  return -ENXIO;
 }
 if (test_and_set_bit(0, (void *)&jsf0.busy) != 0) {
  unlock_kernel();
  return -EBUSY;
 }

 unlock_kernel();
 return 0;
}
