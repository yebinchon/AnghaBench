
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int struct_mutex; } ;


 int DRM_ERROR (char*) ;
 int DRM_MINOR_CONTROL ;
 int DRM_MINOR_RENDER ;
 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_minors_idr ;
 int idr_get_new_above (int *,int *,int,int*) ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int drm_minor_get_id(struct drm_device *dev, int type)
{
 int new_id;
 int ret;
 int base = 0, limit = 63;

 if (type == DRM_MINOR_CONTROL) {
                base += 64;
                limit = base + 127;
        } else if (type == DRM_MINOR_RENDER) {
                base += 128;
                limit = base + 255;
        }

again:
 if (idr_pre_get(&drm_minors_idr, GFP_KERNEL) == 0) {
  DRM_ERROR("Out of memory expanding drawable idr\n");
  return -ENOMEM;
 }
 mutex_lock(&dev->struct_mutex);
 ret = idr_get_new_above(&drm_minors_idr, ((void*)0),
    base, &new_id);
 mutex_unlock(&dev->struct_mutex);
 if (ret == -EAGAIN)
  goto again;
 else if (ret)
  return ret;

 if (new_id >= limit) {
  idr_remove(&drm_minors_idr, new_id);
  return -EINVAL;
 }
 return new_id;
}
