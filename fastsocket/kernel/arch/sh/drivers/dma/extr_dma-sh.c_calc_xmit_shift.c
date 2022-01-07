
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct dma_channel {size_t chan; } ;


 scalar_t__ CHCR ;
 size_t CHCR_TS_MASK ;
 size_t CHCR_TS_SHIFT ;
 size_t ctrl_inl (scalar_t__) ;
 scalar_t__* dma_base_addr ;
 unsigned int* ts_shift ;

__attribute__((used)) static inline unsigned int calc_xmit_shift(struct dma_channel *chan)
{
 u32 chcr = ctrl_inl(dma_base_addr[chan->chan] + CHCR);

 return ts_shift[(chcr & CHCR_TS_MASK)>>CHCR_TS_SHIFT];
}
