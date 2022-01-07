
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nv50_mast {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct nouveau_crtc {TYPE_1__ base; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,struct nv50_mast*) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (struct nv50_mast*,int) ;
 int nv50_crtc_cursor_hide (struct nouveau_crtc*) ;
 int nv50_crtc_cursor_show (struct nouveau_crtc*) ;
 struct nv50_mast* nv50_mast (int ) ;

__attribute__((used)) static void
nv50_crtc_cursor_show_hide(struct nouveau_crtc *nv_crtc, bool show, bool update)
{
 struct nv50_mast *mast = nv50_mast(nv_crtc->base.dev);

 if (show)
  nv50_crtc_cursor_show(nv_crtc);
 else
  nv50_crtc_cursor_hide(nv_crtc);

 if (update) {
  u32 *push = evo_wait(mast, 2);
  if (push) {
   evo_mthd(push, 0x0080, 1);
   evo_data(push, 0x00000000);
   evo_kick(push, mast);
  }
 }
}
