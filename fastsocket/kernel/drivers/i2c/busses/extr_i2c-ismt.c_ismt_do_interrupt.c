
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ismt_priv {scalar_t__ smba; } ;
typedef int irqreturn_t ;


 int IRQ_NONE ;
 scalar_t__ ISMT_MSTR_MSTS ;
 int ISMT_MSTS_MEIS ;
 int ISMT_MSTS_MIS ;
 int ismt_handle_isr (struct ismt_priv*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t ismt_do_interrupt(int vec, void *data)
{
 u32 val;
 struct ismt_priv *priv = data;





 val = readl(priv->smba + ISMT_MSTR_MSTS);

 if (!(val & (ISMT_MSTS_MIS | ISMT_MSTS_MEIS)))
  return IRQ_NONE;
 else
  writel(val | ISMT_MSTS_MIS | ISMT_MSTS_MEIS,
         priv->smba + ISMT_MSTR_MSTS);

 return ismt_handle_isr(priv);
}
