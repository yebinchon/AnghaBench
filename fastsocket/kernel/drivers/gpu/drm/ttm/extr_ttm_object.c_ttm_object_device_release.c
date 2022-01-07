
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_object_device {int object_lock; int object_hash; } ;


 int drm_ht_remove (int *) ;
 int kfree (struct ttm_object_device*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void ttm_object_device_release(struct ttm_object_device **p_tdev)
{
 struct ttm_object_device *tdev = *p_tdev;

 *p_tdev = ((void*)0);

 write_lock(&tdev->object_lock);
 drm_ht_remove(&tdev->object_hash);
 write_unlock(&tdev->object_lock);

 kfree(tdev);
}
