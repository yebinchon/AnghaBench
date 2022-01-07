
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int master; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {int page_flipping; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int COMMIT_RING () ;
 int DRM_DEBUG (char*) ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int RING_SPACE_TEST_WITH_RETURN (TYPE_1__*) ;
 int radeon_cp_dispatch_flip (struct drm_device*,int ) ;
 int radeon_do_init_pageflip (struct drm_device*,int ) ;

__attribute__((used)) static int radeon_cp_flip(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 RING_SPACE_TEST_WITH_RETURN(dev_priv);

 if (!dev_priv->page_flipping)
  radeon_do_init_pageflip(dev, file_priv->master);

 radeon_cp_dispatch_flip(dev, file_priv->master);

 COMMIT_RING();
 return 0;
}
