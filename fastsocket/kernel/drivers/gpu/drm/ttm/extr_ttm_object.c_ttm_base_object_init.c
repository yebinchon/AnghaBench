
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_object_file {struct ttm_object_device* tdev; } ;
struct ttm_object_device {int object_hash; int object_lock; } ;
struct ttm_base_object {int shareable; void (* refcount_release ) (struct ttm_base_object**) ;void (* ref_obj_release ) (struct ttm_base_object*,int) ;int object_type; int hash; int refcount; int tfile; } ;
typedef enum ttm_object_type { ____Placeholder_ttm_object_type } ttm_object_type ;


 int TTM_REF_USAGE ;
 int drm_ht_just_insert_please (int *,int *,unsigned long,int,int ,int ) ;
 int drm_ht_remove_item (int *,int *) ;
 int kref_init (int *) ;
 int ttm_base_object_unref (struct ttm_base_object**) ;
 int ttm_object_file_ref (struct ttm_object_file*) ;
 int ttm_ref_object_add (struct ttm_object_file*,struct ttm_base_object*,int ,int *) ;
 scalar_t__ unlikely (int) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int ttm_base_object_init(struct ttm_object_file *tfile,
    struct ttm_base_object *base,
    bool shareable,
    enum ttm_object_type object_type,
    void (*refcount_release) (struct ttm_base_object **),
    void (*ref_obj_release) (struct ttm_base_object *,
        enum ttm_ref_type ref_type))
{
 struct ttm_object_device *tdev = tfile->tdev;
 int ret;

 base->shareable = shareable;
 base->tfile = ttm_object_file_ref(tfile);
 base->refcount_release = refcount_release;
 base->ref_obj_release = ref_obj_release;
 base->object_type = object_type;
 write_lock(&tdev->object_lock);
 kref_init(&base->refcount);
 ret = drm_ht_just_insert_please(&tdev->object_hash,
     &base->hash,
     (unsigned long)base, 31, 0, 0);
 write_unlock(&tdev->object_lock);
 if (unlikely(ret != 0))
  goto out_err0;

 ret = ttm_ref_object_add(tfile, base, TTM_REF_USAGE, ((void*)0));
 if (unlikely(ret != 0))
  goto out_err1;

 ttm_base_object_unref(&base);

 return 0;
out_err1:
 (void)drm_ht_remove_item(&tdev->object_hash, &base->hash);
out_err0:
 return ret;
}
