
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv50_display_flip {int chan; int disp; } ;
struct nouveau_device {int dummy; } ;
struct drm_crtc {int dev; } ;


 int evo_data (int *,int) ;
 int evo_kick (int *,int ) ;
 int evo_mthd (int *,int,int) ;
 int * evo_wait (int ,int) ;
 struct nouveau_device* nouveau_dev (int ) ;
 int nv50_disp (int ) ;
 int nv50_display_flip_wait ;
 int nv50_sync (struct drm_crtc*) ;
 int nv_wait_cb (struct nouveau_device*,int ,struct nv50_display_flip*) ;

void
nv50_display_flip_stop(struct drm_crtc *crtc)
{
 struct nouveau_device *device = nouveau_dev(crtc->dev);
 struct nv50_display_flip flip = {
  .disp = nv50_disp(crtc->dev),
  .chan = nv50_sync(crtc),
 };
 u32 *push;

 push = evo_wait(flip.chan, 8);
 if (push) {
  evo_mthd(push, 0x0084, 1);
  evo_data(push, 0x00000000);
  evo_mthd(push, 0x0094, 1);
  evo_data(push, 0x00000000);
  evo_mthd(push, 0x00c0, 1);
  evo_data(push, 0x00000000);
  evo_mthd(push, 0x0080, 1);
  evo_data(push, 0x00000000);
  evo_kick(push, flip.chan);
 }

 nv_wait_cb(device, nv50_display_flip_wait, &flip);
}
