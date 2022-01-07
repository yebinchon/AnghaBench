
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_radeon_private {unsigned int flags; int cs_mutex; } ;
struct drm_radeon_cs {int cs_id; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* agp_buffer_map; struct drm_radeon_private* dev_private; } ;
struct drm_buf {int offset; } ;
struct TYPE_2__ {int * handle; } ;


 unsigned int CHIP_R600 ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 unsigned int RADEON_FAMILY_MASK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int r600_cs_id_emit (struct drm_radeon_private*,int *) ;
 int r600_cs_legacy (struct drm_device*,void*,struct drm_file*,unsigned int,int *,int*) ;
 int r600_ib_free (struct drm_device*,struct drm_buf*,struct drm_file*,int,int) ;
 int r600_ib_get (struct drm_device*,struct drm_file*,struct drm_buf**) ;

int r600_cs_legacy_ioctl(struct drm_device *dev, void *data, struct drm_file *fpriv)
{
 struct drm_radeon_private *dev_priv = dev->dev_private;
 struct drm_radeon_cs *cs = data;
 struct drm_buf *buf;
 unsigned family;
 int l, r = 0;
 u32 *ib, cs_id = 0;

 if (dev_priv == ((void*)0)) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }
 family = dev_priv->flags & RADEON_FAMILY_MASK;
 if (family < CHIP_R600) {
  DRM_ERROR("cs ioctl valid only for R6XX & R7XX in legacy mode\n");
  return -EINVAL;
 }
 mutex_lock(&dev_priv->cs_mutex);

 r = r600_ib_get(dev, fpriv, &buf);
 if (r) {
  DRM_ERROR("ib_get failed\n");
  goto out;
 }
 ib = dev->agp_buffer_map->handle + buf->offset;

 r = r600_cs_legacy(dev, data, fpriv, family, ib, &l);
 if (r) {
  goto out;
 }

out:
 r600_ib_free(dev, buf, fpriv, l, r);

 r600_cs_id_emit(dev_priv, &cs_id);
 cs->cs_id = cs_id;
 mutex_unlock(&dev_priv->cs_mutex);
 return r;
}
