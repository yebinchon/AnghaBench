
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ismt_priv {int cmp; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;

__attribute__((used)) static irqreturn_t ismt_handle_isr(struct ismt_priv *priv)
{
 complete(&priv->cmp);

 return IRQ_HANDLED;
}
