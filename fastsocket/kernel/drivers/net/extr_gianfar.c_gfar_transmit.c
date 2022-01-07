
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int gfar_schedule_cleanup (struct net_device*) ;

__attribute__((used)) static irqreturn_t gfar_transmit(int irq, void *dev_id)
{
 gfar_schedule_cleanup((struct net_device *)dev_id);
 return IRQ_HANDLED;
}
