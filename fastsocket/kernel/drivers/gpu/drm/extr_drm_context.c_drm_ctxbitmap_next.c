
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int struct_mutex; int ctx_idr; } ;


 int DRM_ERROR (char*) ;
 int DRM_RESERVED_CONTEXTS ;
 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int idr_get_new_above (int *,int *,int ,int*) ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int drm_ctxbitmap_next(struct drm_device * dev)
{
 int new_id;
 int ret;

again:
 if (idr_pre_get(&dev->ctx_idr, GFP_KERNEL) == 0) {
  DRM_ERROR("Out of memory expanding drawable idr\n");
  return -ENOMEM;
 }
 mutex_lock(&dev->struct_mutex);
 ret = idr_get_new_above(&dev->ctx_idr, ((void*)0),
    DRM_RESERVED_CONTEXTS, &new_id);
 mutex_unlock(&dev->struct_mutex);
 if (ret == -EAGAIN)
  goto again;
 else if (ret)
  return ret;

 return new_id;
}
