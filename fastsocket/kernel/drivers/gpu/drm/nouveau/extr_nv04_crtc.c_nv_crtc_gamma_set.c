
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* u16 ;
struct TYPE_4__ {scalar_t__ depth; void** b; void** g; void** r; } ;
struct TYPE_3__ {int fb; } ;
struct nouveau_crtc {TYPE_2__ lut; TYPE_1__ base; } ;
struct drm_crtc {int dummy; } ;


 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 int nv_crtc_gamma_load (struct drm_crtc*) ;

__attribute__((used)) static void
nv_crtc_gamma_set(struct drm_crtc *crtc, u16 *r, u16 *g, u16 *b, uint32_t start,
    uint32_t size)
{
 int end = (start + size > 256) ? 256 : start + size, i;
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);

 for (i = start; i < end; i++) {
  nv_crtc->lut.r[i] = r[i];
  nv_crtc->lut.g[i] = g[i];
  nv_crtc->lut.b[i] = b[i];
 }






 if (!nv_crtc->base.fb) {
  nv_crtc->lut.depth = 0;
  return;
 }

 nv_crtc_gamma_load(crtc);
}
