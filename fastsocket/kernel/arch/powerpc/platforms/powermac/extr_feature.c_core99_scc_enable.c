
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct macio_chip {unsigned long flags; } ;
struct device_node {int name; } ;


 long ENODEV ;
 long EPERM ;
 int KEYLARGO_FCR0 ;
 int KL0_IRDA_CLK19_ENABLE ;
 int KL0_IRDA_CLK32_ENABLE ;
 int KL0_IRDA_DEFAULT0 ;
 int KL0_IRDA_DEFAULT1 ;
 int KL0_IRDA_ENABLE ;
 int KL0_IRDA_FAST_CONNECT ;
 int KL0_IRDA_HIGH_BAND ;
 int KL0_IRDA_RESET ;
 int KL0_IRDA_SOURCE1_SEL ;
 int KL0_IRDA_SOURCE2_SEL ;
 int KL0_SCCA_ENABLE ;
 int KL0_SCCB_ENABLE ;
 int KL0_SCC_A_INTF_ENABLE ;
 int KL0_SCC_B_INTF_ENABLE ;
 int KL0_SCC_CELL_ENABLE ;
 int KL0_SCC_RESET ;
 int LOCK (unsigned long) ;
 int MACIO_BIC (int ,int ) ;
 int MACIO_BIS (int ,int ) ;
 unsigned long MACIO_FLAG_SCCA_ON ;
 unsigned long MACIO_FLAG_SCCB_ON ;
 int MACIO_FLAG_SCC_LOCKED ;
 int MACIO_IN32 (int ) ;
 int MACIO_OUT32 (int ,int) ;
 long PMAC_SCC_FLAG_XMON ;
 long PMAC_SCC_I2S1 ;
 long PMAC_SCC_IRDA ;
 int UNLOCK (unsigned long) ;
 struct macio_chip* macio_find (struct device_node*,int ) ;
 int mdelay (int) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static long core99_scc_enable(struct device_node *node, long param, long value)
{
 struct macio_chip* macio;
 unsigned long flags;
 unsigned long chan_mask;
 u32 fcr;

 macio = macio_find(node, 0);
 if (!macio)
  return -ENODEV;
 if (!strcmp(node->name, "ch-a"))
  chan_mask = MACIO_FLAG_SCCA_ON;
 else if (!strcmp(node->name, "ch-b"))
  chan_mask = MACIO_FLAG_SCCB_ON;
 else
  return -ENODEV;

 if (value) {
  int need_reset_scc = 0;
  int need_reset_irda = 0;

  LOCK(flags);
  fcr = MACIO_IN32(KEYLARGO_FCR0);

  if (!(fcr & KL0_SCC_CELL_ENABLE)) {
   fcr |= KL0_SCC_CELL_ENABLE;
   need_reset_scc = 1;
  }
  if (chan_mask & MACIO_FLAG_SCCA_ON) {
   fcr |= KL0_SCCA_ENABLE;

   if ((param & 0xfff) == PMAC_SCC_I2S1)
    fcr &= ~KL0_SCC_A_INTF_ENABLE;
   else
    fcr |= KL0_SCC_A_INTF_ENABLE;
  }
  if (chan_mask & MACIO_FLAG_SCCB_ON) {
   fcr |= KL0_SCCB_ENABLE;

   if ((param & 0xfff) == PMAC_SCC_IRDA) {
    fcr &= ~KL0_SCC_B_INTF_ENABLE;
    fcr |= KL0_IRDA_ENABLE;
    fcr |= KL0_IRDA_CLK32_ENABLE | KL0_IRDA_CLK19_ENABLE;
    fcr |= KL0_IRDA_SOURCE1_SEL;
    fcr &= ~(KL0_IRDA_FAST_CONNECT|KL0_IRDA_DEFAULT1|KL0_IRDA_DEFAULT0);
    fcr &= ~(KL0_IRDA_SOURCE2_SEL|KL0_IRDA_HIGH_BAND);
    need_reset_irda = 1;
   } else
    fcr |= KL0_SCC_B_INTF_ENABLE;
  }
  MACIO_OUT32(KEYLARGO_FCR0, fcr);
  macio->flags |= chan_mask;
  if (need_reset_scc) {
   MACIO_BIS(KEYLARGO_FCR0, KL0_SCC_RESET);
   (void)MACIO_IN32(KEYLARGO_FCR0);
   UNLOCK(flags);
   mdelay(15);
   LOCK(flags);
   MACIO_BIC(KEYLARGO_FCR0, KL0_SCC_RESET);
  }
  if (need_reset_irda) {
   MACIO_BIS(KEYLARGO_FCR0, KL0_IRDA_RESET);
   (void)MACIO_IN32(KEYLARGO_FCR0);
   UNLOCK(flags);
   mdelay(15);
   LOCK(flags);
   MACIO_BIC(KEYLARGO_FCR0, KL0_IRDA_RESET);
  }
  UNLOCK(flags);
  if (param & PMAC_SCC_FLAG_XMON)
   macio->flags |= MACIO_FLAG_SCC_LOCKED;
 } else {
  if (macio->flags & MACIO_FLAG_SCC_LOCKED)
   return -EPERM;
  LOCK(flags);
  fcr = MACIO_IN32(KEYLARGO_FCR0);
  if (chan_mask & MACIO_FLAG_SCCA_ON)
   fcr &= ~KL0_SCCA_ENABLE;
  if (chan_mask & MACIO_FLAG_SCCB_ON) {
   fcr &= ~KL0_SCCB_ENABLE;

   if ((param & 0xfff) == PMAC_SCC_IRDA) {
    fcr &= ~KL0_IRDA_ENABLE;
    fcr &= ~(KL0_IRDA_CLK32_ENABLE | KL0_IRDA_CLK19_ENABLE);
    fcr &= ~(KL0_IRDA_FAST_CONNECT|KL0_IRDA_DEFAULT1|KL0_IRDA_DEFAULT0);
    fcr &= ~(KL0_IRDA_SOURCE1_SEL|KL0_IRDA_SOURCE2_SEL|KL0_IRDA_HIGH_BAND);
   }
  }
  MACIO_OUT32(KEYLARGO_FCR0, fcr);
  if ((fcr & (KL0_SCCA_ENABLE | KL0_SCCB_ENABLE)) == 0) {
   fcr &= ~KL0_SCC_CELL_ENABLE;
   MACIO_OUT32(KEYLARGO_FCR0, fcr);
  }
  macio->flags &= ~(chan_mask);
  UNLOCK(flags);
  mdelay(10);
 }
 return 0;
}
