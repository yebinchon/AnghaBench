
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int dev_private; } ;
struct TYPE_2__ {int clear_depth; int clear_color; int flags; } ;
typedef TYPE_1__ drm_i810_clear_t ;


 int EINVAL ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int i810_dma_dispatch_clear (struct drm_device*,int ,int ,int ) ;

__attribute__((used)) static int i810_clear_bufs(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 drm_i810_clear_t *clear = data;

 LOCK_TEST_WITH_RETURN(dev, file_priv);


 if (!dev->dev_private)
  return -EINVAL;

 i810_dma_dispatch_clear(dev, clear->flags,
    clear->clear_color, clear->clear_depth);
 return 0;
}
