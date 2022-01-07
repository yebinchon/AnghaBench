
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_dma {scalar_t__ send_count; scalar_t__ request_count; scalar_t__ granted_count; } ;
struct drm_device_dma {scalar_t__ buf_count; } ;
struct drm_device {struct drm_device_dma* dma; } ;


 int DRM_CURRENTPID ;
 int DRM_ERROR (char*,int ,scalar_t__,...) ;
 int EINVAL ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int r128_cce_get_buffers (struct drm_device*,struct drm_file*,struct drm_dma*) ;

int r128_cce_buffers(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 struct drm_device_dma *dma = dev->dma;
 int ret = 0;
 struct drm_dma *d = data;

 LOCK_TEST_WITH_RETURN(dev, file_priv);



 if (d->send_count != 0) {
  DRM_ERROR("Process %d trying to send %d buffers via drmDMA\n",
     DRM_CURRENTPID, d->send_count);
  return -EINVAL;
 }



 if (d->request_count < 0 || d->request_count > dma->buf_count) {
  DRM_ERROR("Process %d trying to get %d buffers (of %d max)\n",
     DRM_CURRENTPID, d->request_count, dma->buf_count);
  return -EINVAL;
 }

 d->granted_count = 0;

 if (d->request_count)
  ret = r128_cce_get_buffers(dev, file_priv, d);

 return ret;
}
