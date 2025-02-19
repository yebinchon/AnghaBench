
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv04_mode_state {TYPE_1__* crtc_reg; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int* DAC; } ;


 int NVSetEnablePalette (struct drm_device*,int,int) ;
 scalar_t__ NV_PRMDIO_PALETTE_DATA ;
 scalar_t__ NV_PRMDIO_PIXEL_MASK ;
 int NV_PRMDIO_PIXEL_MASK_MASK ;
 int NV_PRMDIO_SIZE ;
 scalar_t__ NV_PRMDIO_WRITE_MODE_ADDRESS ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_wr08 (struct nouveau_device*,scalar_t__,int) ;

void
nouveau_hw_load_state_palette(struct drm_device *dev, int head,
         struct nv04_mode_state *state)
{
 struct nouveau_device *device = nouveau_dev(dev);
 int head_offset = head * NV_PRMDIO_SIZE, i;

 nv_wr08(device, NV_PRMDIO_PIXEL_MASK + head_offset,
    NV_PRMDIO_PIXEL_MASK_MASK);
 nv_wr08(device, NV_PRMDIO_WRITE_MODE_ADDRESS + head_offset, 0x0);

 for (i = 0; i < 768; i++) {
  nv_wr08(device, NV_PRMDIO_PALETTE_DATA + head_offset,
    state->crtc_reg[head].DAC[i]);
 }

 NVSetEnablePalette(dev, head, 0);
}
