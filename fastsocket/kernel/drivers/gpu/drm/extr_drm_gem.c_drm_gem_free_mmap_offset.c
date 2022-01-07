
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_map_list {int * map; int file_offset_node; int hash; } ;
struct drm_gem_object {struct drm_map_list map_list; struct drm_device* dev; } ;
struct drm_gem_mm {int offset_hash; } ;
struct drm_device {struct drm_gem_mm* mm_private; } ;


 int drm_ht_remove_item (int *,int *) ;
 int drm_mm_put_block (int ) ;
 int kfree (int *) ;

void
drm_gem_free_mmap_offset(struct drm_gem_object *obj)
{
 struct drm_device *dev = obj->dev;
 struct drm_gem_mm *mm = dev->mm_private;
 struct drm_map_list *list = &obj->map_list;

 drm_ht_remove_item(&mm->offset_hash, &list->hash);
 drm_mm_put_block(list->file_offset_node);
 kfree(list->map);
 list->map = ((void*)0);
}
