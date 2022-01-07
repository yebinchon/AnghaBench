
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u16 ;
struct TYPE_2__ {void** b; void** g; void** r; } ;
struct nouveau_crtc {TYPE_1__ lut; } ;
struct drm_crtc {int dummy; } ;


 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;

__attribute__((used)) static void nouveau_fbcon_gamma_set(struct drm_crtc *crtc, u16 red, u16 green,
        u16 blue, int regno)
{
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);

 nv_crtc->lut.r[regno] = red;
 nv_crtc->lut.g[regno] = green;
 nv_crtc->lut.b[regno] = blue;
}
