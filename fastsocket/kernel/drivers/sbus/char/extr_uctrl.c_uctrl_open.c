
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int global_driver ;
 int lock_kernel () ;
 int uctrl_get_event_status (int ) ;
 int uctrl_get_external_status (int ) ;
 int unlock_kernel () ;

__attribute__((used)) static int
uctrl_open(struct inode *inode, struct file *file)
{
 lock_kernel();
 uctrl_get_event_status(global_driver);
 uctrl_get_external_status(global_driver);
 unlock_kernel();
 return 0;
}
