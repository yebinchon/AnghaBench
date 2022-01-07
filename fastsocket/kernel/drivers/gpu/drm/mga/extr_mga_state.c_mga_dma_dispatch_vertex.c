
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {TYPE_2__* dev_private; } ;
struct drm_buf {scalar_t__ used; scalar_t__ pending; int idx; int bus_address; TYPE_3__* dev_private; } ;
struct TYPE_7__ {int nbox; int * boxes; int dirty; } ;
typedef TYPE_1__ drm_mga_sarea_t ;
struct TYPE_8__ {int dma_access; TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_mga_private_t ;
struct TYPE_9__ {int dispatched; scalar_t__ discard; } ;
typedef TYPE_3__ drm_mga_buf_priv_t ;


 int ADVANCE_DMA () ;
 int AGE_BUFFER (TYPE_3__*) ;
 int BEGIN_DMA (int) ;
 int DMA_BLOCK (int ,int,int ,int,int ,int,int ,int) ;
 int DMA_LOCALS ;
 int DRM_DEBUG (char*,int ,scalar_t__) ;
 int FLUSH_DMA () ;
 int MGA_DMAPAD ;
 int MGA_DMA_VERTEX ;
 int MGA_EMIT_STATE (TYPE_2__*,int ) ;
 int MGA_SECADDRESS ;
 int MGA_SECEND ;
 int mga_emit_clip_rect (TYPE_2__*,int *) ;
 int mga_freelist_put (struct drm_device*,struct drm_buf*) ;

__attribute__((used)) static void mga_dma_dispatch_vertex(struct drm_device *dev, struct drm_buf *buf)
{
 drm_mga_private_t *dev_priv = dev->dev_private;
 drm_mga_buf_priv_t *buf_priv = buf->dev_private;
 drm_mga_sarea_t *sarea_priv = dev_priv->sarea_priv;
 u32 address = (u32) buf->bus_address;
 u32 length = (u32) buf->used;
 int i = 0;
 DMA_LOCALS;
 DRM_DEBUG("buf=%d used=%d\n", buf->idx, buf->used);

 if (buf->used) {
  buf_priv->dispatched = 1;

  MGA_EMIT_STATE(dev_priv, sarea_priv->dirty);

  do {
   if (i < sarea_priv->nbox) {
    mga_emit_clip_rect(dev_priv,
         &sarea_priv->boxes[i]);
   }

   BEGIN_DMA(1);

   DMA_BLOCK(MGA_DMAPAD, 0x00000000,
      MGA_DMAPAD, 0x00000000,
      MGA_SECADDRESS, (address |
         MGA_DMA_VERTEX),
      MGA_SECEND, ((address + length) |
            dev_priv->dma_access));

   ADVANCE_DMA();
  } while (++i < sarea_priv->nbox);
 }

 if (buf_priv->discard) {
  AGE_BUFFER(buf_priv);
  buf->pending = 0;
  buf->used = 0;
  buf_priv->dispatched = 0;

  mga_freelist_put(dev, buf);
 }

 FLUSH_DMA();
}
