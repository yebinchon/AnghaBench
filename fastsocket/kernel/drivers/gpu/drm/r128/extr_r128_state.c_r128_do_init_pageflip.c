
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {int crtc_offset_cntl; int front_offset; int page_flipping; scalar_t__ current_page; TYPE_1__* sarea_priv; void* crtc_offset; } ;
typedef TYPE_2__ drm_r128_private_t ;
struct TYPE_3__ {scalar_t__ pfCurrentPage; } ;


 int DRM_DEBUG (char*) ;
 int R128_CRTC_OFFSET ;
 int R128_CRTC_OFFSET_CNTL ;
 int R128_CRTC_OFFSET_FLIP_CNTL ;
 void* R128_READ (int ) ;
 int R128_WRITE (int ,int) ;

__attribute__((used)) static int r128_do_init_pageflip(struct drm_device *dev)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 DRM_DEBUG("\n");

 dev_priv->crtc_offset = R128_READ(R128_CRTC_OFFSET);
 dev_priv->crtc_offset_cntl = R128_READ(R128_CRTC_OFFSET_CNTL);

 R128_WRITE(R128_CRTC_OFFSET, dev_priv->front_offset);
 R128_WRITE(R128_CRTC_OFFSET_CNTL,
     dev_priv->crtc_offset_cntl | R128_CRTC_OFFSET_FLIP_CNTL);

 dev_priv->page_flipping = 1;
 dev_priv->current_page = 0;
 dev_priv->sarea_priv->pfCurrentPage = dev_priv->current_page;

 return 0;
}
