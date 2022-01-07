
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct nouveau_encoder {int dcb; TYPE_1__ restore; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 struct nouveau_encoder* nouveau_encoder (struct drm_encoder*) ;
 int nv04_dfp_get_bound_head (struct drm_device*,int ) ;
 scalar_t__ nv_two_heads (struct drm_device*) ;

__attribute__((used)) static void nv04_dfp_save(struct drm_encoder *encoder)
{
 struct nouveau_encoder *nv_encoder = nouveau_encoder(encoder);
 struct drm_device *dev = encoder->dev;

 if (nv_two_heads(dev))
  nv_encoder->restore.head =
   nv04_dfp_get_bound_head(dev, nv_encoder->dcb);
}
