
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IRQ_CONTROL_REG_OFFSET ;
 scalar_t__ OMAP_IH1_BASE ;
 scalar_t__ OMAP_IH2_BASE ;
 int omap_writel (int,scalar_t__) ;

__attribute__((used)) static void omap_ack_irq(unsigned int irq)
{
 if (irq > 31)
  omap_writel(0x1, OMAP_IH2_BASE + IRQ_CONTROL_REG_OFFSET);

 omap_writel(0x1, OMAP_IH1_BASE + IRQ_CONTROL_REG_OFFSET);
}
