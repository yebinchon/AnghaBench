
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {struct drm_crtc* crtc; } ;


 TYPE_1__* nouveau_encoder (struct drm_encoder*) ;

__attribute__((used)) static struct drm_crtc *
nv50_display_crtc_get(struct drm_encoder *encoder)
{
 return nouveau_encoder(encoder)->crtc;
}
