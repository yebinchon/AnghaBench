
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct b43legacy_dmaring {int nr_slots; int frameoffset; TYPE_2__* dev; struct b43legacy_dmadesc32* descbase; } ;
struct b43legacy_dmadesc32 {void* address; void* control; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int translation; } ;
struct TYPE_4__ {TYPE_1__ dma; } ;


 int B43legacy_DMA32_DCTL_ADDREXT_MASK ;
 int B43legacy_DMA32_DCTL_ADDREXT_SHIFT ;
 int B43legacy_DMA32_DCTL_BYTECNT ;
 int B43legacy_DMA32_DCTL_DTABLEEND ;
 int B43legacy_DMA32_DCTL_FRAMEEND ;
 int B43legacy_DMA32_DCTL_FRAMESTART ;
 int B43legacy_DMA32_DCTL_IRQ ;
 int B43legacy_WARN_ON (int) ;
 int SSB_DMA_TRANSLATION_MASK ;
 int SSB_DMA_TRANSLATION_SHIFT ;
 void* cpu_to_le32 (int) ;

__attribute__((used)) static void op32_fill_descriptor(struct b43legacy_dmaring *ring,
     struct b43legacy_dmadesc32 *desc,
     dma_addr_t dmaaddr, u16 bufsize,
     int start, int end, int irq)
{
 struct b43legacy_dmadesc32 *descbase = ring->descbase;
 int slot;
 u32 ctl;
 u32 addr;
 u32 addrext;

 slot = (int)(desc - descbase);
 B43legacy_WARN_ON(!(slot >= 0 && slot < ring->nr_slots));

 addr = (u32)(dmaaddr & ~SSB_DMA_TRANSLATION_MASK);
 addrext = (u32)(dmaaddr & SSB_DMA_TRANSLATION_MASK)
     >> SSB_DMA_TRANSLATION_SHIFT;
 addr |= ring->dev->dma.translation;
 ctl = (bufsize - ring->frameoffset)
       & B43legacy_DMA32_DCTL_BYTECNT;
 if (slot == ring->nr_slots - 1)
  ctl |= B43legacy_DMA32_DCTL_DTABLEEND;
 if (start)
  ctl |= B43legacy_DMA32_DCTL_FRAMESTART;
 if (end)
  ctl |= B43legacy_DMA32_DCTL_FRAMEEND;
 if (irq)
  ctl |= B43legacy_DMA32_DCTL_IRQ;
 ctl |= (addrext << B43legacy_DMA32_DCTL_ADDREXT_SHIFT)
        & B43legacy_DMA32_DCTL_ADDREXT_MASK;

 desc->control = cpu_to_le32(ctl);
 desc->address = cpu_to_le32(addr);
}
