
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint16_t ;
struct drm_file {TYPE_1__* master; } ;
struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {TYPE_2__* dev_private; struct drm_device_dma* dma; } ;
struct drm_buf {struct drm_file* file_priv; TYPE_3__* dev_private; } ;
struct TYPE_8__ {int event_wrap; } ;
typedef TYPE_2__ drm_savage_private_t ;
struct TYPE_9__ {int age; int * prev; int * next; } ;
typedef TYPE_3__ drm_savage_buf_priv_t ;
struct TYPE_10__ {scalar_t__ hw_lock; } ;
struct TYPE_7__ {TYPE_5__ lock; } ;


 int DRM_DEBUG (char*) ;
 int SAVAGE_WAIT_3D ;
 int SET_AGE (int *,int ,int ) ;
 int drm_idlelock_release (TYPE_5__*) ;
 int drm_idlelock_take (TYPE_5__*) ;
 int savage_bci_emit_event (TYPE_2__*,int ) ;
 int savage_freelist_put (struct drm_device*,struct drm_buf*) ;

void savage_reclaim_buffers(struct drm_device *dev, struct drm_file *file_priv)
{
 struct drm_device_dma *dma = dev->dma;
 drm_savage_private_t *dev_priv = dev->dev_private;
 int release_idlelock = 0;
 int i;

 if (!dma)
  return;
 if (!dev_priv)
  return;
 if (!dma->buflist)
  return;

 if (file_priv->master && file_priv->master->lock.hw_lock) {
  drm_idlelock_take(&file_priv->master->lock);
  release_idlelock = 1;
 }

 for (i = 0; i < dma->buf_count; i++) {
  struct drm_buf *buf = dma->buflist[i];
  drm_savage_buf_priv_t *buf_priv = buf->dev_private;

  if (buf->file_priv == file_priv && buf_priv &&
      buf_priv->next == ((void*)0) && buf_priv->prev == ((void*)0)) {
   uint16_t event;
   DRM_DEBUG("reclaimed from client\n");
   event = savage_bci_emit_event(dev_priv, SAVAGE_WAIT_3D);
   SET_AGE(&buf_priv->age, event, dev_priv->event_wrap);
   savage_freelist_put(dev, buf);
  }
 }

 if (release_idlelock)
  drm_idlelock_release(&file_priv->master->lock);
}
