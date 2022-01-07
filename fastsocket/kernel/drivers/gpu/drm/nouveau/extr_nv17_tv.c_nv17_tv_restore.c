
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int output; } ;
struct TYPE_6__ {int last_dpms; TYPE_1__ restore; } ;
struct TYPE_5__ {int saved_state; } ;


 int NVWriteRAMDAC (struct drm_device*,int ,scalar_t__,int ) ;
 int NV_DPMS_CLEARED ;
 scalar_t__ NV_PRAMDAC_DACCLK ;
 TYPE_3__* nouveau_encoder (struct drm_encoder*) ;
 scalar_t__ nv04_dac_output_offset (struct drm_encoder*) ;
 int nv17_tv_state_load (struct drm_device*,int *) ;
 TYPE_2__* to_tv_enc (struct drm_encoder*) ;

__attribute__((used)) static void nv17_tv_restore(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;

 NVWriteRAMDAC(dev, 0, NV_PRAMDAC_DACCLK +
    nv04_dac_output_offset(encoder),
    nouveau_encoder(encoder)->restore.output);

 nv17_tv_state_load(dev, &to_tv_enc(encoder)->saved_state);

 nouveau_encoder(encoder)->last_dpms = NV_DPMS_CLEARED;
}
