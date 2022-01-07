
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv04_crtc_reg {int * CRTC; } ;
struct drm_crtc {int dev; } ;
struct TYPE_2__ {int index; } ;


 int NVWriteVgaCrtc (int ,int ,int,int ) ;
 TYPE_1__* nouveau_crtc (struct drm_crtc*) ;

__attribute__((used)) static void
crtc_wr_cio_state(struct drm_crtc *crtc, struct nv04_crtc_reg *crtcstate, int index)
{
 NVWriteVgaCrtc(crtc->dev, nouveau_crtc(crtc)->index, index,
         crtcstate->CRTC[index]);
}
