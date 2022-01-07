
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43legacy_dmaring {int dummy; } ;
struct b43legacy_dmadesc32 {int dummy; } ;


 int B43legacy_DMA32_RXINDEX ;
 int b43legacy_dma_write (struct b43legacy_dmaring*,int ,int ) ;

__attribute__((used)) static void op32_set_current_rxslot(struct b43legacy_dmaring *ring,
        int slot)
{
 b43legacy_dma_write(ring, B43legacy_DMA32_RXINDEX,
       (u32)(slot * sizeof(struct b43legacy_dmadesc32)));
}
