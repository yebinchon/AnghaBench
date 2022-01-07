
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;


 int i8259A_auto_eoi ;
 int init_8259A (int ) ;
 int irq_trigger ;
 int restore_ELCR (int ) ;

__attribute__((used)) static int i8259A_resume(struct sys_device *dev)
{
 init_8259A(i8259A_auto_eoi);
 restore_ELCR(irq_trigger);
 return 0;
}
