
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; TYPE_1__* dev_private; } ;
struct drm_buf {TYPE_2__* dev_private; } ;
struct TYPE_4__ {struct TYPE_4__* next; struct TYPE_4__* prev; struct drm_buf* buf; int age; } ;
struct TYPE_3__ {TYPE_2__ head; TYPE_2__ tail; } ;
typedef TYPE_1__ drm_savage_private_t ;
typedef TYPE_2__ drm_savage_buf_priv_t ;


 int DRM_DEBUG (char*,int) ;
 int SET_AGE (int *,int ,int ) ;

__attribute__((used)) static int savage_freelist_init(struct drm_device * dev)
{
 drm_savage_private_t *dev_priv = dev->dev_private;
 struct drm_device_dma *dma = dev->dma;
 struct drm_buf *buf;
 drm_savage_buf_priv_t *entry;
 int i;
 DRM_DEBUG("count=%d\n", dma->buf_count);

 dev_priv->head.next = &dev_priv->tail;
 dev_priv->head.prev = ((void*)0);
 dev_priv->head.buf = ((void*)0);

 dev_priv->tail.next = ((void*)0);
 dev_priv->tail.prev = &dev_priv->head;
 dev_priv->tail.buf = ((void*)0);

 for (i = 0; i < dma->buf_count; i++) {
  buf = dma->buflist[i];
  entry = buf->dev_private;

  SET_AGE(&entry->age, 0, 0);
  entry->buf = buf;

  entry->next = dev_priv->head.next;
  entry->prev = &dev_priv->head;
  dev_priv->head.next->prev = entry;
  dev_priv->head.next = entry;
 }

 return 0;
}
