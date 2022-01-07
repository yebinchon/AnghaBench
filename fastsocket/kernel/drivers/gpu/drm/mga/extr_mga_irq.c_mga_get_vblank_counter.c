
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int vbl_received; } ;
typedef TYPE_1__ drm_mga_private_t ;


 int atomic_read (int *) ;

u32 mga_get_vblank_counter(struct drm_device *dev, int crtc)
{
 const drm_mga_private_t *const dev_priv =
  (drm_mga_private_t *) dev->dev_private;

 if (crtc != 0)
  return 0;

 return atomic_read(&dev_priv->vbl_received);
}
