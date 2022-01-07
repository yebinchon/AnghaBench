
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv50_mast {int dummy; } ;
struct nouveau_crtc {int index; } ;
struct drm_crtc {int dev; } ;


 scalar_t__ NV84_DISP_MAST_CLASS ;
 scalar_t__ NVD0_DISP_MAST_CLASS ;
 int evo_data (int *,int) ;
 int evo_kick (int *,struct nv50_mast*) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (struct nv50_mast*,int) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 int nv50_crtc_cursor_show_hide (struct nouveau_crtc*,int,int) ;
 int nv50_display_flip_stop (struct drm_crtc*) ;
 struct nv50_mast* nv50_mast (int ) ;
 scalar_t__ nv50_vers (struct nv50_mast*) ;

__attribute__((used)) static void
nv50_crtc_prepare(struct drm_crtc *crtc)
{
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);
 struct nv50_mast *mast = nv50_mast(crtc->dev);
 u32 *push;

 nv50_display_flip_stop(crtc);

 push = evo_wait(mast, 2);
 if (push) {
  if (nv50_vers(mast) < NV84_DISP_MAST_CLASS) {
   evo_mthd(push, 0x0874 + (nv_crtc->index * 0x400), 1);
   evo_data(push, 0x00000000);
   evo_mthd(push, 0x0840 + (nv_crtc->index * 0x400), 1);
   evo_data(push, 0x40000000);
  } else
  if (nv50_vers(mast) < NVD0_DISP_MAST_CLASS) {
   evo_mthd(push, 0x0874 + (nv_crtc->index * 0x400), 1);
   evo_data(push, 0x00000000);
   evo_mthd(push, 0x0840 + (nv_crtc->index * 0x400), 1);
   evo_data(push, 0x40000000);
   evo_mthd(push, 0x085c + (nv_crtc->index * 0x400), 1);
   evo_data(push, 0x00000000);
  } else {
   evo_mthd(push, 0x0474 + (nv_crtc->index * 0x300), 1);
   evo_data(push, 0x00000000);
   evo_mthd(push, 0x0440 + (nv_crtc->index * 0x300), 1);
   evo_data(push, 0x03000000);
   evo_mthd(push, 0x045c + (nv_crtc->index * 0x300), 1);
   evo_data(push, 0x00000000);
  }

  evo_kick(push, mast);
 }

 nv50_crtc_cursor_show_hide(nv_crtc, 0, 0);
}
