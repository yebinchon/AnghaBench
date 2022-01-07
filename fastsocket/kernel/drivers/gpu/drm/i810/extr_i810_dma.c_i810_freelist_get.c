
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; } ;
struct drm_buf {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int in_use; } ;
typedef TYPE_1__ drm_i810_buf_priv_t ;


 int I810_BUF_CLIENT ;
 int I810_BUF_FREE ;
 int cmpxchg (int ,int,int ) ;

__attribute__((used)) static struct drm_buf *i810_freelist_get(struct drm_device * dev)
{
 struct drm_device_dma *dma = dev->dma;
 int i;
 int used;



 for (i = 0; i < dma->buf_count; i++) {
  struct drm_buf *buf = dma->buflist[i];
  drm_i810_buf_priv_t *buf_priv = buf->dev_private;

  used = cmpxchg(buf_priv->in_use, I810_BUF_FREE,
          I810_BUF_CLIENT);
  if (used == I810_BUF_FREE)
   return buf;
 }
 return ((void*)0);
}
