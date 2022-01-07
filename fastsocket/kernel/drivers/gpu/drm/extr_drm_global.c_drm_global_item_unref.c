
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_global_reference {size_t global_type; int (* release ) (struct drm_global_reference*) ;int * object; } ;
struct drm_global_item {scalar_t__ refcount; int mutex; int * object; } ;


 int BUG_ON (int) ;
 struct drm_global_item* glob ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_global_reference*) ;

void drm_global_item_unref(struct drm_global_reference *ref)
{
 struct drm_global_item *item = &glob[ref->global_type];

 mutex_lock(&item->mutex);
 BUG_ON(item->refcount == 0);
 BUG_ON(ref->object != item->object);
 if (--item->refcount == 0) {
  ref->release(ref);
  item->object = ((void*)0);
 }
 mutex_unlock(&item->mutex);
}
