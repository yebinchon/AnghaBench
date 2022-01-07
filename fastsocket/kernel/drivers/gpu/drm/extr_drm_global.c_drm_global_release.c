
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_global_item {scalar_t__ refcount; int * object; } ;


 int BUG_ON (int) ;
 int DRM_GLOBAL_NUM ;
 struct drm_global_item* glob ;

void drm_global_release(void)
{
 int i;
 for (i = 0; i < DRM_GLOBAL_NUM; ++i) {
  struct drm_global_item *item = &glob[i];
  BUG_ON(item->object != ((void*)0));
  BUG_ON(item->refcount != 0);
 }
}
