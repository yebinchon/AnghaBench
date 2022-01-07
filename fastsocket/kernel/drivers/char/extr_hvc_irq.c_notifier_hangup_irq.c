
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvc_struct {int dummy; } ;


 int notifier_del_irq (struct hvc_struct*,int) ;

void notifier_hangup_irq(struct hvc_struct *hp, int irq)
{
 notifier_del_irq(hp, irq);
}
