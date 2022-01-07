
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device_dma {size_t buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; int * dev_private; } ;
struct drm_buf {int used; TYPE_2__* dev_private; } ;
struct TYPE_4__ {size_t idx; scalar_t__ discard; int used; } ;
typedef TYPE_1__ drm_mga_vertex_t ;
typedef int drm_mga_private_t ;
struct TYPE_5__ {int dispatched; scalar_t__ discard; } ;
typedef TYPE_2__ drm_mga_buf_priv_t ;


 int AGE_BUFFER (TYPE_2__*) ;
 int EINVAL ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int WRAP_TEST_WITH_RETURN (int *) ;
 int mga_dma_dispatch_vertex (struct drm_device*,struct drm_buf*) ;
 int mga_freelist_put (struct drm_device*,struct drm_buf*) ;
 int mga_verify_state (int *) ;

__attribute__((used)) static int mga_dma_vertex(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_mga_private_t *dev_priv = dev->dev_private;
 struct drm_device_dma *dma = dev->dma;
 struct drm_buf *buf;
 drm_mga_buf_priv_t *buf_priv;
 drm_mga_vertex_t *vertex = data;

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 if (vertex->idx < 0 || vertex->idx > dma->buf_count)
  return -EINVAL;
 buf = dma->buflist[vertex->idx];
 buf_priv = buf->dev_private;

 buf->used = vertex->used;
 buf_priv->discard = vertex->discard;

 if (!mga_verify_state(dev_priv)) {
  if (vertex->discard) {
   if (buf_priv->dispatched == 1)
    AGE_BUFFER(buf_priv);
   buf_priv->dispatched = 0;
   mga_freelist_put(dev, buf);
  }
  return -EINVAL;
 }

 WRAP_TEST_WITH_RETURN(dev_priv);

 mga_dma_dispatch_vertex(dev, buf);

 return 0;
}
