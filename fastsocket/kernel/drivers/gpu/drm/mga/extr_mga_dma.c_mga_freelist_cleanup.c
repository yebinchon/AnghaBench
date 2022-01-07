
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {int * tail; TYPE_2__* head; } ;
typedef TYPE_1__ drm_mga_private_t ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_2__ drm_mga_freelist_t ;


 int DRM_DEBUG (char*) ;
 int kfree (TYPE_2__*) ;

__attribute__((used)) static void mga_freelist_cleanup(struct drm_device *dev)
{
 drm_mga_private_t *dev_priv = dev->dev_private;
 drm_mga_freelist_t *entry;
 drm_mga_freelist_t *next;
 DRM_DEBUG("\n");

 entry = dev_priv->head;
 while (entry) {
  next = entry->next;
  kfree(entry);
  entry = next;
 }

 dev_priv->head = dev_priv->tail = ((void*)0);
}
