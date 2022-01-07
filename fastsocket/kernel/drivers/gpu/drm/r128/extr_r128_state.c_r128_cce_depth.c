
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int * dev_private; } ;
typedef int drm_r128_private_t ;
struct TYPE_6__ {int func; } ;
typedef TYPE_1__ drm_r128_depth_t ;


 int COMMIT_RING () ;
 int DEV_INIT_TEST_WITH_RETURN (int *) ;
 int EINVAL ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;




 int RING_SPACE_TEST_WITH_RETURN (int *) ;
 int r128_cce_dispatch_read_pixels (struct drm_device*,TYPE_1__*) ;
 int r128_cce_dispatch_read_span (struct drm_device*,TYPE_1__*) ;
 int r128_cce_dispatch_write_pixels (struct drm_device*,TYPE_1__*) ;
 int r128_cce_dispatch_write_span (struct drm_device*,TYPE_1__*) ;

__attribute__((used)) static int r128_cce_depth(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 drm_r128_depth_t *depth = data;
 int ret;

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 DEV_INIT_TEST_WITH_RETURN(dev_priv);

 RING_SPACE_TEST_WITH_RETURN(dev_priv);

 ret = -EINVAL;
 switch (depth->func) {
 case 128:
  ret = r128_cce_dispatch_write_span(dev, depth);
  break;
 case 129:
  ret = r128_cce_dispatch_write_pixels(dev, depth);
  break;
 case 130:
  ret = r128_cce_dispatch_read_span(dev, depth);
  break;
 case 131:
  ret = r128_cce_dispatch_read_pixels(dev, depth);
  break;
 }

 COMMIT_RING();
 return ret;
}
