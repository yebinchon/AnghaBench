
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct b43legacy_dmaring {int frameoffset; scalar_t__ tx; int dmabase; TYPE_2__* dev; } ;
struct TYPE_3__ {int translation; } ;
struct TYPE_4__ {TYPE_1__ dma; } ;


 int B43legacy_DMA32_RXADDREXT_MASK ;
 int B43legacy_DMA32_RXADDREXT_SHIFT ;
 int B43legacy_DMA32_RXCTL ;
 int B43legacy_DMA32_RXENABLE ;
 int B43legacy_DMA32_RXFROFF_SHIFT ;
 int B43legacy_DMA32_RXINDEX ;
 int B43legacy_DMA32_RXRING ;
 int B43legacy_DMA32_TXADDREXT_MASK ;
 int B43legacy_DMA32_TXADDREXT_SHIFT ;
 int B43legacy_DMA32_TXCTL ;
 int B43legacy_DMA32_TXENABLE ;
 int B43legacy_DMA32_TXRING ;
 int SSB_DMA_TRANSLATION_MASK ;
 int SSB_DMA_TRANSLATION_SHIFT ;
 int alloc_initial_descbuffers (struct b43legacy_dmaring*) ;
 int b43legacy_dma_write (struct b43legacy_dmaring*,int ,int) ;

__attribute__((used)) static int dmacontroller_setup(struct b43legacy_dmaring *ring)
{
 int err = 0;
 u32 value;
 u32 addrext;
 u32 trans = ring->dev->dma.translation;
 u32 ringbase = (u32)(ring->dmabase);

 if (ring->tx) {
  addrext = (ringbase & SSB_DMA_TRANSLATION_MASK)
     >> SSB_DMA_TRANSLATION_SHIFT;
  value = B43legacy_DMA32_TXENABLE;
  value |= (addrext << B43legacy_DMA32_TXADDREXT_SHIFT)
   & B43legacy_DMA32_TXADDREXT_MASK;
  b43legacy_dma_write(ring, B43legacy_DMA32_TXCTL, value);
  b43legacy_dma_write(ring, B43legacy_DMA32_TXRING,
        (ringbase & ~SSB_DMA_TRANSLATION_MASK)
        | trans);
 } else {
  err = alloc_initial_descbuffers(ring);
  if (err)
   goto out;

  addrext = (ringbase & SSB_DMA_TRANSLATION_MASK)
     >> SSB_DMA_TRANSLATION_SHIFT;
  value = (ring->frameoffset <<
    B43legacy_DMA32_RXFROFF_SHIFT);
  value |= B43legacy_DMA32_RXENABLE;
  value |= (addrext << B43legacy_DMA32_RXADDREXT_SHIFT)
    & B43legacy_DMA32_RXADDREXT_MASK;
  b43legacy_dma_write(ring, B43legacy_DMA32_RXCTL, value);
  b43legacy_dma_write(ring, B43legacy_DMA32_RXRING,
        (ringbase & ~SSB_DMA_TRANSLATION_MASK)
        | trans);
  b43legacy_dma_write(ring, B43legacy_DMA32_RXINDEX, 200);
 }

out:
 return err;
}
