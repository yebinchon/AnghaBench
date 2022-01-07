
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_descr {TYPE_1__* hw; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int rd_addr; } ;


 int DMA_MASK_MSTRPAGE ;
 int MSTRPAGE_VALUE ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline dma_addr_t rd_get_addr(struct ring_descr *rd)
{
 dma_addr_t a;

 a = le32_to_cpu(rd->hw->rd_addr);
 return (a & DMA_MASK_MSTRPAGE) | (MSTRPAGE_VALUE << 24);
}
