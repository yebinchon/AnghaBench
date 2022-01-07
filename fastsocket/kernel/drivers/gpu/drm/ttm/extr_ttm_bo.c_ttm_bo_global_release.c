
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_bo_global {int kobj; } ;
struct drm_global_reference {struct ttm_bo_global* object; } ;


 int kobject_del (int *) ;
 int kobject_put (int *) ;

void ttm_bo_global_release(struct drm_global_reference *ref)
{
 struct ttm_bo_global *glob = ref->object;

 kobject_del(&glob->kobj);
 kobject_put(&glob->kobj);
}
