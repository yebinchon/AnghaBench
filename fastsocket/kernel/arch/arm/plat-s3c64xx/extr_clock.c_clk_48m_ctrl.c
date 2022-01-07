
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 int S3C64XX_OTHERS ;
 int S3C64XX_OTHERS_USBMASK ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static int clk_48m_ctrl(struct clk *clk, int enable)
{
 unsigned long flags;
 u32 val;


 local_irq_save(flags);

 val = __raw_readl(S3C64XX_OTHERS);
 if (enable)
  val |= S3C64XX_OTHERS_USBMASK;
 else
  val &= ~S3C64XX_OTHERS_USBMASK;

 __raw_writel(val, S3C64XX_OTHERS);
 local_irq_restore(flags);

 return 0;
}
