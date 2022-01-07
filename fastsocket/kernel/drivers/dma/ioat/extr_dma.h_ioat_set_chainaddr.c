
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ioat_chan_common {scalar_t__ reg_base; } ;
struct ioat_dma_chan {struct ioat_chan_common base; } ;


 scalar_t__ IOAT1_CHAINADDR_OFFSET_HIGH ;
 scalar_t__ IOAT1_CHAINADDR_OFFSET_LOW ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void ioat_set_chainaddr(struct ioat_dma_chan *ioat, u64 addr)
{
 struct ioat_chan_common *chan = &ioat->base;

 writel(addr & 0x00000000FFFFFFFF,
        chan->reg_base + IOAT1_CHAINADDR_OFFSET_LOW);
 writel(addr >> 32,
        chan->reg_base + IOAT1_CHAINADDR_OFFSET_HIGH);
}
