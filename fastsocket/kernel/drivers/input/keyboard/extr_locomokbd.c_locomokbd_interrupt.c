
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct locomokbd {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int locomokbd_scankeyboard (struct locomokbd*) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t locomokbd_interrupt(int irq, void *dev_id)
{
 struct locomokbd *locomokbd = dev_id;

 udelay(100);

 locomokbd_scankeyboard(locomokbd);

 return IRQ_HANDLED;
}
