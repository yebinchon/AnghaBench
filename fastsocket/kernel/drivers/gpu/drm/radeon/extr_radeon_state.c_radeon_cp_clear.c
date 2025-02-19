
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_radeon_master_private {TYPE_1__* sarea_priv; } ;
struct drm_file {TYPE_3__* master; } ;
struct drm_device {int * dev_private; } ;
struct TYPE_5__ {int nbox; } ;
typedef TYPE_1__ drm_radeon_sarea_t ;
typedef int drm_radeon_private_t ;
struct TYPE_6__ {int depth_boxes; } ;
typedef TYPE_2__ drm_radeon_clear_t ;
typedef int drm_radeon_clear_rect_t ;
typedef int depth_boxes ;
struct TYPE_7__ {struct drm_radeon_master_private* driver_priv; } ;


 int COMMIT_RING () ;
 scalar_t__ DRM_COPY_FROM_USER (int **,int ,int) ;
 int DRM_DEBUG (char*) ;
 int EFAULT ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int RADEON_NR_SAREA_CLIPRECTS ;
 int RING_SPACE_TEST_WITH_RETURN (int *) ;
 int radeon_cp_dispatch_clear (struct drm_device*,TYPE_3__*,TYPE_2__*,int *) ;

__attribute__((used)) static int radeon_cp_clear(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 struct drm_radeon_master_private *master_priv = file_priv->master->driver_priv;
 drm_radeon_sarea_t *sarea_priv = master_priv->sarea_priv;
 drm_radeon_clear_t *clear = data;
 drm_radeon_clear_rect_t depth_boxes[RADEON_NR_SAREA_CLIPRECTS];
 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 RING_SPACE_TEST_WITH_RETURN(dev_priv);

 if (sarea_priv->nbox > RADEON_NR_SAREA_CLIPRECTS)
  sarea_priv->nbox = RADEON_NR_SAREA_CLIPRECTS;

 if (DRM_COPY_FROM_USER(&depth_boxes, clear->depth_boxes,
          sarea_priv->nbox * sizeof(depth_boxes[0])))
  return -EFAULT;

 radeon_cp_dispatch_clear(dev, file_priv->master, clear, depth_boxes);

 COMMIT_RING();
 return 0;
}
