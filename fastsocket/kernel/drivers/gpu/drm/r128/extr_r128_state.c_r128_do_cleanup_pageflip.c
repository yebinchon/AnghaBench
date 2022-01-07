
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {scalar_t__ current_page; scalar_t__ page_flipping; int crtc_offset_cntl; int crtc_offset; } ;
typedef TYPE_1__ drm_r128_private_t ;


 int COMMIT_RING () ;
 int DRM_DEBUG (char*) ;
 int R128_CRTC_OFFSET ;
 int R128_CRTC_OFFSET_CNTL ;
 int R128_WRITE (int ,int ) ;
 int r128_cce_dispatch_flip (struct drm_device*) ;

__attribute__((used)) static int r128_do_cleanup_pageflip(struct drm_device *dev)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 DRM_DEBUG("\n");

 R128_WRITE(R128_CRTC_OFFSET, dev_priv->crtc_offset);
 R128_WRITE(R128_CRTC_OFFSET_CNTL, dev_priv->crtc_offset_cntl);

 if (dev_priv->current_page != 0) {
  r128_cce_dispatch_flip(dev);
  COMMIT_RING();
 }

 dev_priv->page_flipping = 0;
 return 0;
}
