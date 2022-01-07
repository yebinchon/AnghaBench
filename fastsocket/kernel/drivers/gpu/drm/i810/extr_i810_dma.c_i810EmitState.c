
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_3__ {unsigned int dirty; int * TexState; int ContextState; int BufferState; } ;
typedef TYPE_1__ drm_i810_sarea_t ;
struct TYPE_4__ {TYPE_1__* sarea_priv; } ;
typedef TYPE_2__ drm_i810_private_t ;


 int DRM_DEBUG (char*,unsigned int) ;
 unsigned int I810_UPLOAD_BUFFERS ;
 unsigned int I810_UPLOAD_CTX ;
 unsigned int I810_UPLOAD_TEX0 ;
 unsigned int I810_UPLOAD_TEX1 ;
 int i810EmitContextVerified (struct drm_device*,int ) ;
 int i810EmitDestVerified (struct drm_device*,int ) ;
 int i810EmitTexVerified (struct drm_device*,int ) ;

__attribute__((used)) static void i810EmitState(struct drm_device *dev)
{
 drm_i810_private_t *dev_priv = dev->dev_private;
 drm_i810_sarea_t *sarea_priv = dev_priv->sarea_priv;
 unsigned int dirty = sarea_priv->dirty;

 DRM_DEBUG("%x\n", dirty);

 if (dirty & I810_UPLOAD_BUFFERS) {
  i810EmitDestVerified(dev, sarea_priv->BufferState);
  sarea_priv->dirty &= ~I810_UPLOAD_BUFFERS;
 }

 if (dirty & I810_UPLOAD_CTX) {
  i810EmitContextVerified(dev, sarea_priv->ContextState);
  sarea_priv->dirty &= ~I810_UPLOAD_CTX;
 }

 if (dirty & I810_UPLOAD_TEX0) {
  i810EmitTexVerified(dev, sarea_priv->TexState[0]);
  sarea_priv->dirty &= ~I810_UPLOAD_TEX0;
 }

 if (dirty & I810_UPLOAD_TEX1) {
  i810EmitTexVerified(dev, sarea_priv->TexState[1]);
  sarea_priv->dirty &= ~I810_UPLOAD_TEX1;
 }
}
