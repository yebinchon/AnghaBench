
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int last_wrap; } ;
typedef TYPE_2__ drm_mga_sarea_t ;
struct TYPE_9__ {int wrapped; } ;
struct TYPE_8__ {TYPE_1__* primary; TYPE_2__* sarea_priv; TYPE_4__ prim; } ;
typedef TYPE_3__ drm_mga_private_t ;
typedef TYPE_4__ drm_mga_primary_buffer_t ;
struct TYPE_6__ {int offset; } ;


 int DRM_DEBUG (char*,...) ;
 int MGA_DMA_GENERAL ;
 int MGA_PRIMADDRESS ;
 int MGA_WRITE (int ,int) ;
 int clear_bit (int ,int *) ;
 int mga_flush_write_combine () ;

void mga_do_dma_wrap_end(drm_mga_private_t *dev_priv)
{
 drm_mga_primary_buffer_t *primary = &dev_priv->prim;
 drm_mga_sarea_t *sarea_priv = dev_priv->sarea_priv;
 u32 head = dev_priv->primary->offset;
 DRM_DEBUG("\n");

 sarea_priv->last_wrap++;
 DRM_DEBUG("   wrap = %d\n", sarea_priv->last_wrap);

 mga_flush_write_combine();
 MGA_WRITE(MGA_PRIMADDRESS, head | MGA_DMA_GENERAL);

 clear_bit(0, &primary->wrapped);
 DRM_DEBUG("done.\n");
}
