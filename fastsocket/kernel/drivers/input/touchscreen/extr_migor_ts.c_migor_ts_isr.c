
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct migor_ts_priv {int work; } ;
typedef int irqreturn_t ;


 int HZ ;
 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static irqreturn_t migor_ts_isr(int irq, void *dev_id)
{
 struct migor_ts_priv *priv = dev_id;
 disable_irq_nosync(irq);
 schedule_delayed_work(&priv->work, HZ / 20);

 return IRQ_HANDLED;
}
