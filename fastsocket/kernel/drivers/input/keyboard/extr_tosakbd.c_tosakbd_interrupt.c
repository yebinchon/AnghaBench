
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tosakbd {int timer; } ;
struct platform_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct tosakbd* platform_get_drvdata (struct platform_device*) ;
 int timer_pending (int *) ;
 int tosakbd_scankeyboard (struct platform_device*) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t tosakbd_interrupt(int irq, void *__dev)
{
 struct platform_device *dev = __dev;
 struct tosakbd *tosakbd = platform_get_drvdata(dev);

 if (!timer_pending(&tosakbd->timer)) {

  udelay(20);
  tosakbd_scankeyboard(dev);
 }

 return IRQ_HANDLED;
}
