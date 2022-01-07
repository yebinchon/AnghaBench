
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; } ;


 int IPW_INTA_MASK_ALL ;
 int IPW_INTA_MASK_R ;
 int STATUS_INT_ENABLED ;
 int ipw_write32 (struct ipw_priv*,int ,int ) ;

__attribute__((used)) static inline void __ipw_enable_interrupts(struct ipw_priv *priv)
{
 if (priv->status & STATUS_INT_ENABLED)
  return;
 priv->status |= STATUS_INT_ENABLED;
 ipw_write32(priv, IPW_INTA_MASK_R, IPW_INTA_MASK_ALL);
}
