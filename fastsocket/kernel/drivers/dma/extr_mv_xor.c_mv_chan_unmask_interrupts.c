
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_chan {int idx; } ;


 int XOR_INTR_MASK (struct mv_xor_chan*) ;
 int XOR_INTR_MASK_VALUE ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void mv_chan_unmask_interrupts(struct mv_xor_chan *chan)
{
 u32 val = __raw_readl(XOR_INTR_MASK(chan));
 val |= XOR_INTR_MASK_VALUE << (chan->idx * 16);
 __raw_writel(val, XOR_INTR_MASK(chan));
}
