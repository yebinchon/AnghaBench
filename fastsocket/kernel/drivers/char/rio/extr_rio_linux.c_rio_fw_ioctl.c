
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int capable (int ) ;
 int func_enter () ;
 int func_exit () ;
 int lock_kernel () ;
 int p ;
 int riocontrol (int ,int ,unsigned int,unsigned long,int ) ;
 int unlock_kernel () ;

__attribute__((used)) static long rio_fw_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
 int rc = 0;
 func_enter();


 lock_kernel();
 rc = riocontrol(p, 0, cmd, arg, capable(CAP_SYS_ADMIN));
 unlock_kernel();

 func_exit();
 return rc;
}
