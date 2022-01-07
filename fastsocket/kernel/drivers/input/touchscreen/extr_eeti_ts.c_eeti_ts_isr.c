
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeti_ts_priv {int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t eeti_ts_isr(int irq, void *dev_id)
{
 struct eeti_ts_priv *priv = dev_id;


 schedule_work(&priv->work);

 return IRQ_HANDLED;
}
