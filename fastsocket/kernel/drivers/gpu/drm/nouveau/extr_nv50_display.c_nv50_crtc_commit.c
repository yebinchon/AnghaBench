
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct nv50_mast {int dummy; } ;
struct TYPE_10__ {int visible; } ;
struct TYPE_9__ {TYPE_3__* nvbo; } ;
struct TYPE_6__ {int tile_flags; } ;
struct nouveau_crtc {int index; TYPE_5__ cursor; TYPE_4__ lut; TYPE_1__ fb; } ;
struct drm_crtc {int fb; int dev; } ;
struct TYPE_7__ {int offset; } ;
struct TYPE_8__ {TYPE_2__ bo; } ;


 scalar_t__ NV84_DISP_MAST_CLASS ;
 scalar_t__ NVD0_DISP_MAST_CLASS ;
 int NvEvoVRAM ;
 int NvEvoVRAM_LP ;
 int evo_data (int *,int) ;
 int evo_kick (int *,struct nv50_mast*) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (struct nv50_mast*,int) ;
 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 int nv50_crtc_cursor_show_hide (struct nouveau_crtc*,int ,int) ;
 int nv50_display_flip_next (struct drm_crtc*,int ,int *,int) ;
 struct nv50_mast* nv50_mast (int ) ;
 scalar_t__ nv50_vers (struct nv50_mast*) ;

__attribute__((used)) static void
nv50_crtc_commit(struct drm_crtc *crtc)
{
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);
 struct nv50_mast *mast = nv50_mast(crtc->dev);
 u32 *push;

 push = evo_wait(mast, 32);
 if (push) {
  if (nv50_vers(mast) < NV84_DISP_MAST_CLASS) {
   evo_mthd(push, 0x0874 + (nv_crtc->index * 0x400), 1);
   evo_data(push, NvEvoVRAM_LP);
   evo_mthd(push, 0x0840 + (nv_crtc->index * 0x400), 2);
   evo_data(push, 0xc0000000);
   evo_data(push, nv_crtc->lut.nvbo->bo.offset >> 8);
  } else
  if (nv50_vers(mast) < NVD0_DISP_MAST_CLASS) {
   evo_mthd(push, 0x0874 + (nv_crtc->index * 0x400), 1);
   evo_data(push, nv_crtc->fb.tile_flags);
   evo_mthd(push, 0x0840 + (nv_crtc->index * 0x400), 2);
   evo_data(push, 0xc0000000);
   evo_data(push, nv_crtc->lut.nvbo->bo.offset >> 8);
   evo_mthd(push, 0x085c + (nv_crtc->index * 0x400), 1);
   evo_data(push, NvEvoVRAM);
  } else {
   evo_mthd(push, 0x0474 + (nv_crtc->index * 0x300), 1);
   evo_data(push, nv_crtc->fb.tile_flags);
   evo_mthd(push, 0x0440 + (nv_crtc->index * 0x300), 4);
   evo_data(push, 0x83000000);
   evo_data(push, nv_crtc->lut.nvbo->bo.offset >> 8);
   evo_data(push, 0x00000000);
   evo_data(push, 0x00000000);
   evo_mthd(push, 0x045c + (nv_crtc->index * 0x300), 1);
   evo_data(push, NvEvoVRAM);
   evo_mthd(push, 0x0430 + (nv_crtc->index * 0x300), 1);
   evo_data(push, 0xffffff00);
  }

  evo_kick(push, mast);
 }

 nv50_crtc_cursor_show_hide(nv_crtc, nv_crtc->cursor.visible, 1);
 nv50_display_flip_next(crtc, crtc->fb, ((void*)0), 1);
}
