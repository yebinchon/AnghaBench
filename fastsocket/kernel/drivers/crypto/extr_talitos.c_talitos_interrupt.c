
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct talitos_private {int done_task; scalar_t__ reg; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ TALITOS_ICR ;
 scalar_t__ TALITOS_ICR_LO ;
 scalar_t__ TALITOS_IMR ;
 int TALITOS_IMR_DONE ;
 scalar_t__ TALITOS_ISR ;
 int TALITOS_ISR_CHDONE ;
 scalar_t__ TALITOS_ISR_LO ;
 int clrbits32 (scalar_t__,int ) ;
 struct talitos_private* dev_get_drvdata (struct device*) ;
 int in_be32 (scalar_t__) ;
 scalar_t__ likely (int) ;
 int out_be32 (scalar_t__,int) ;
 int talitos_error (unsigned long,int,int) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t talitos_interrupt(int irq, void *data)
{
 struct device *dev = data;
 struct talitos_private *priv = dev_get_drvdata(dev);
 u32 isr, isr_lo;

 isr = in_be32(priv->reg + TALITOS_ISR);
 isr_lo = in_be32(priv->reg + TALITOS_ISR_LO);

 out_be32(priv->reg + TALITOS_ICR, isr);
 out_be32(priv->reg + TALITOS_ICR_LO, isr_lo);

 if (unlikely((isr & ~TALITOS_ISR_CHDONE) || isr_lo))
  talitos_error((unsigned long)data, isr, isr_lo);
 else
  if (likely(isr & TALITOS_ISR_CHDONE)) {

   clrbits32(priv->reg + TALITOS_IMR, TALITOS_IMR_DONE);

   tasklet_schedule(&priv->done_task);
  }

 return (isr || isr_lo) ? IRQ_HANDLED : IRQ_NONE;
}
