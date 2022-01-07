
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_buf {struct drm_file* file_priv; } ;


 int EBUSY ;
 struct drm_buf* radeon_freelist_get (struct drm_device*) ;

__attribute__((used)) static int r600_ib_get(struct drm_device *dev,
   struct drm_file *fpriv,
   struct drm_buf **buffer)
{
 struct drm_buf *buf;

 *buffer = ((void*)0);
 buf = radeon_freelist_get(dev);
 if (!buf) {
  return -EBUSY;
 }
 buf->file_priv = fpriv;
 *buffer = buf;
 return 0;
}
