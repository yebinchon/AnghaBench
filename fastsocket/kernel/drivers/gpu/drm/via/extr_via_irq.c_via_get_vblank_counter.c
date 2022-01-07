
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int vbl_received; } ;
typedef TYPE_1__ drm_via_private_t ;


 int atomic_read (int *) ;

u32 via_get_vblank_counter(struct drm_device *dev, int crtc)
{
 drm_via_private_t *dev_priv = dev->dev_private;
 if (crtc != 0)
  return 0;

 return atomic_read(&dev_priv->vbl_received);
}
