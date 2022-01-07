
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sys_device {int dummy; } ;
typedef int pm_message_t ;


 int irq_trigger ;
 int save_ELCR (int ) ;

__attribute__((used)) static int i8259A_suspend(struct sys_device *dev, pm_message_t state)
{
 save_ELCR(irq_trigger);
 return 0;
}
