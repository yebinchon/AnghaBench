
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_global_reference {size_t global_type; int (* init ) (struct drm_global_reference*) ;int * object; int size; } ;
struct drm_global_item {scalar_t__ refcount; int * object; int mutex; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct drm_global_item* glob ;
 int * kzalloc (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_global_reference*) ;
 scalar_t__ unlikely (int) ;

int drm_global_item_ref(struct drm_global_reference *ref)
{
 int ret;
 struct drm_global_item *item = &glob[ref->global_type];
 void *object;

 mutex_lock(&item->mutex);
 if (item->refcount == 0) {
  item->object = kzalloc(ref->size, GFP_KERNEL);
  if (unlikely(item->object == ((void*)0))) {
   ret = -ENOMEM;
   goto out_err;
  }

  ref->object = item->object;
  ret = ref->init(ref);
  if (unlikely(ret != 0))
   goto out_err;

 }
 ++item->refcount;
 ref->object = item->object;
 object = item->object;
 mutex_unlock(&item->mutex);
 return 0;
out_err:
 mutex_unlock(&item->mutex);
 item->object = ((void*)0);
 return ret;
}
