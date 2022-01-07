
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_file {int dummy; } ;
struct drm_device {int * dev_private; } ;
struct TYPE_2__ {int mask; } ;
typedef TYPE_1__ drm_radeon_stipple_t ;
typedef int drm_radeon_private_t ;


 int COMMIT_RING () ;
 scalar_t__ DRM_COPY_FROM_USER (int **,int ,int) ;
 int EFAULT ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int RING_SPACE_TEST_WITH_RETURN (int *) ;
 int radeon_cp_dispatch_stipple (struct drm_device*,int *) ;

__attribute__((used)) static int radeon_cp_stipple(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 drm_radeon_stipple_t *stipple = data;
 u32 mask[32];

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 if (DRM_COPY_FROM_USER(&mask, stipple->mask, 32 * sizeof(u32)))
  return -EFAULT;

 RING_SPACE_TEST_WITH_RETURN(dev_priv);

 radeon_cp_dispatch_stipple(dev, mask);

 COMMIT_RING();
 return 0;
}
