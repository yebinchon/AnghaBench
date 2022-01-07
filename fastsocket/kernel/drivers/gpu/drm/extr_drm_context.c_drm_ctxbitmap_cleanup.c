
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int struct_mutex; int ctx_idr; } ;


 int idr_remove_all (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void drm_ctxbitmap_cleanup(struct drm_device * dev)
{
 mutex_lock(&dev->struct_mutex);
 idr_remove_all(&dev->ctx_idr);
 mutex_unlock(&dev->struct_mutex);
}
