
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct drm_fb_helper {TYPE_1__* funcs; } ;
struct drm_crtc {int gamma_size; int * gamma_store; } ;
struct TYPE_2__ {int (* gamma_get ) (struct drm_crtc*,int *,int *,int *,int) ;} ;


 int stub1 (struct drm_crtc*,int *,int *,int *,int) ;

__attribute__((used)) static void drm_fb_helper_save_lut_atomic(struct drm_crtc *crtc, struct drm_fb_helper *helper)
{
 uint16_t *r_base, *g_base, *b_base;
 int i;

 r_base = crtc->gamma_store;
 g_base = r_base + crtc->gamma_size;
 b_base = g_base + crtc->gamma_size;

 for (i = 0; i < crtc->gamma_size; i++)
  helper->funcs->gamma_get(crtc, &r_base[i], &g_base[i], &b_base[i], i);
}
