
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv04_crtc_reg {int * CRTC; } ;
struct drm_device {int dummy; } ;


 int NVWriteVgaCrtc (struct drm_device*,int,int,int ) ;

__attribute__((used)) static void
wr_cio_state(struct drm_device *dev, int head,
      struct nv04_crtc_reg *crtcstate, int index)
{
 NVWriteVgaCrtc(dev, head, index, crtcstate->CRTC[index]);
}
