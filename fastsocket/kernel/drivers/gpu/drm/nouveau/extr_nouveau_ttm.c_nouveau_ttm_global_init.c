
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_mem_global {int dummy; } ;
struct ttm_bo_global {int dummy; } ;
struct drm_global_reference {int size; int * release; int * init; int global_type; int object; } ;
struct TYPE_3__ {struct drm_global_reference ref; int mem_glob; } ;
struct TYPE_4__ {struct drm_global_reference mem_global_ref; TYPE_1__ bo_global_ref; } ;
struct nouveau_drm {TYPE_2__ ttm; } ;


 int DRM_ERROR (char*) ;
 int DRM_GLOBAL_TTM_BO ;
 int DRM_GLOBAL_TTM_MEM ;
 int drm_global_item_ref (struct drm_global_reference*) ;
 int drm_global_item_unref (struct drm_global_reference*) ;
 int nouveau_ttm_mem_global_init ;
 int nouveau_ttm_mem_global_release ;
 int ttm_bo_global_init ;
 int ttm_bo_global_release ;
 scalar_t__ unlikely (int) ;

int
nouveau_ttm_global_init(struct nouveau_drm *drm)
{
 struct drm_global_reference *global_ref;
 int ret;

 global_ref = &drm->ttm.mem_global_ref;
 global_ref->global_type = DRM_GLOBAL_TTM_MEM;
 global_ref->size = sizeof(struct ttm_mem_global);
 global_ref->init = &nouveau_ttm_mem_global_init;
 global_ref->release = &nouveau_ttm_mem_global_release;

 ret = drm_global_item_ref(global_ref);
 if (unlikely(ret != 0)) {
  DRM_ERROR("Failed setting up TTM memory accounting\n");
  drm->ttm.mem_global_ref.release = ((void*)0);
  return ret;
 }

 drm->ttm.bo_global_ref.mem_glob = global_ref->object;
 global_ref = &drm->ttm.bo_global_ref.ref;
 global_ref->global_type = DRM_GLOBAL_TTM_BO;
 global_ref->size = sizeof(struct ttm_bo_global);
 global_ref->init = &ttm_bo_global_init;
 global_ref->release = &ttm_bo_global_release;

 ret = drm_global_item_ref(global_ref);
 if (unlikely(ret != 0)) {
  DRM_ERROR("Failed setting up TTM BO subsystem\n");
  drm_global_item_unref(&drm->ttm.mem_global_ref);
  drm->ttm.mem_global_ref.release = ((void*)0);
  return ret;
 }

 return 0;
}
