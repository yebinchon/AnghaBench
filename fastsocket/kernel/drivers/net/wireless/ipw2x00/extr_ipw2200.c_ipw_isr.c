
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int status; int isr_inta; int irq_lock; int irq_tasklet; } ;
typedef int irqreturn_t ;


 int IPW_INTA_MASK_ALL ;
 int IPW_INTA_MASK_R ;
 int IPW_INTA_RW ;
 int IPW_WARNING (char*) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int STATUS_INT_ENABLED ;
 int __ipw_disable_interrupts (struct ipw_priv*) ;
 int ipw_read32 (struct ipw_priv*,int ) ;
 int ipw_write32 (struct ipw_priv*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t ipw_isr(int irq, void *data)
{
 struct ipw_priv *priv = data;
 u32 inta, inta_mask;

 if (!priv)
  return IRQ_NONE;

 spin_lock(&priv->irq_lock);

 if (!(priv->status & STATUS_INT_ENABLED)) {

  goto none;
 }

 inta = ipw_read32(priv, IPW_INTA_RW);
 inta_mask = ipw_read32(priv, IPW_INTA_MASK_R);

 if (inta == 0xFFFFFFFF) {

  IPW_WARNING("IRQ INTA == 0xFFFFFFFF\n");
  goto none;
 }

 if (!(inta & (IPW_INTA_MASK_ALL & inta_mask))) {

  goto none;
 }


 __ipw_disable_interrupts(priv);


 inta &= (IPW_INTA_MASK_ALL & inta_mask);
 ipw_write32(priv, IPW_INTA_RW, inta);


 priv->isr_inta = inta;

 tasklet_schedule(&priv->irq_tasklet);

 spin_unlock(&priv->irq_lock);

 return IRQ_HANDLED;
      none:
 spin_unlock(&priv->irq_lock);
 return IRQ_NONE;
}
