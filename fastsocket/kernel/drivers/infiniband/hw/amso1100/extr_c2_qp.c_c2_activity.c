
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct c2_dev {scalar_t__ regs; } ;


 int C2_HINT_MAKE (int ,int ) ;
 scalar_t__ PCI_BAR0_ADAPTER_HINT ;
 int __raw_writel (int ,scalar_t__) ;
 int readl (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static inline void c2_activity(struct c2_dev *c2dev, u32 mq_index, u16 shared)
{
 while (readl(c2dev->regs + PCI_BAR0_ADAPTER_HINT) & 0x80000000)
  udelay(10);

 __raw_writel(C2_HINT_MAKE(mq_index, shared),
       c2dev->regs + PCI_BAR0_ADAPTER_HINT);
}
