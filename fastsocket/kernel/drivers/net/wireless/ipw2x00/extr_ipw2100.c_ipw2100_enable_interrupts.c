
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {int status; int net_dev; } ;


 int IPW_INTERRUPT_MASK ;
 int IPW_REG_INTA_MASK ;
 int STATUS_INT_ENABLED ;
 int write_register (int ,int ,int ) ;

__attribute__((used)) static inline void ipw2100_enable_interrupts(struct ipw2100_priv *priv)
{
 if (priv->status & STATUS_INT_ENABLED)
  return;
 priv->status |= STATUS_INT_ENABLED;
 write_register(priv->net_dev, IPW_REG_INTA_MASK, IPW_INTERRUPT_MASK);
}
