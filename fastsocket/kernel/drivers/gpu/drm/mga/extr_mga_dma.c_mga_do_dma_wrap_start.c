
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {int wrapped; scalar_t__ space; int last_wrap; int tail; scalar_t__ size; scalar_t__ last_flush; } ;
struct TYPE_6__ {scalar_t__ dma_access; TYPE_1__* primary; TYPE_3__ prim; } ;
typedef TYPE_2__ drm_mga_private_t ;
typedef TYPE_3__ drm_mga_primary_buffer_t ;
struct TYPE_5__ {scalar_t__ offset; } ;


 int ADVANCE_DMA () ;
 int BEGIN_DMA_WRAP () ;
 int DMA_BLOCK (int ,int,int ,int,int ,int,int ,int) ;
 int DMA_LOCALS ;
 int DRM_DEBUG (char*,...) ;
 int MGA_DMAPAD ;
 int MGA_PRIMADDRESS ;
 int MGA_PRIMEND ;
 scalar_t__ MGA_READ (int ) ;
 int MGA_WRITE (int ,scalar_t__) ;
 int mga_flush_write_combine () ;
 int set_bit (int ,int *) ;

void mga_do_dma_wrap_start(drm_mga_private_t *dev_priv)
{
 drm_mga_primary_buffer_t *primary = &dev_priv->prim;
 u32 head, tail;
 DMA_LOCALS;
 DRM_DEBUG("\n");

 BEGIN_DMA_WRAP();

 DMA_BLOCK(MGA_DMAPAD, 0x00000000,
    MGA_DMAPAD, 0x00000000,
    MGA_DMAPAD, 0x00000000, MGA_DMAPAD, 0x00000000);

 ADVANCE_DMA();

 tail = primary->tail + dev_priv->primary->offset;

 primary->tail = 0;
 primary->last_flush = 0;
 primary->last_wrap++;

 head = MGA_READ(MGA_PRIMADDRESS);

 if (head == dev_priv->primary->offset)
  primary->space = primary->size;
 else
  primary->space = head - dev_priv->primary->offset;

 DRM_DEBUG("   head = 0x%06lx\n", (unsigned long)(head - dev_priv->primary->offset));
 DRM_DEBUG("   tail = 0x%06x\n", primary->tail);
 DRM_DEBUG("   wrap = %d\n", primary->last_wrap);
 DRM_DEBUG("  space = 0x%06x\n", primary->space);

 mga_flush_write_combine();
 MGA_WRITE(MGA_PRIMEND, tail | dev_priv->dma_access);

 set_bit(0, &primary->wrapped);
 DRM_DEBUG("done.\n");
}
