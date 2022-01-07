
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int func; } ;
typedef TYPE_1__ drm_r128_init_t ;


 int DRM_DEBUG (char*) ;
 int EINVAL ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;


 int r128_do_cleanup_cce (struct drm_device*) ;
 int r128_do_init_cce (struct drm_device*,TYPE_1__*) ;

int r128_cce_init(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_r128_init_t *init = data;

 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 switch (init->func) {
 case 128:
  return r128_do_init_cce(dev, init);
 case 129:
  return r128_do_cleanup_cce(dev);
 }

 return -EINVAL;
}
