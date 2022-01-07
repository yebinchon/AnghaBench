
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ptv_200; } ;
struct TYPE_6__ {int ptv_200; } ;
struct nv17_tv_encoder {TYPE_3__ saved_state; TYPE_2__ state; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_5__ {int output; } ;
struct TYPE_8__ {TYPE_1__ restore; } ;


 int NVReadRAMDAC (struct drm_device*,int ,scalar_t__) ;
 scalar_t__ NV_PRAMDAC_DACCLK ;
 TYPE_4__* nouveau_encoder (struct drm_encoder*) ;
 scalar_t__ nv04_dac_output_offset (struct drm_encoder*) ;
 int nv17_tv_state_save (struct drm_device*,TYPE_3__*) ;
 struct nv17_tv_encoder* to_tv_enc (struct drm_encoder*) ;

__attribute__((used)) static void nv17_tv_save(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct nv17_tv_encoder *tv_enc = to_tv_enc(encoder);

 nouveau_encoder(encoder)->restore.output =
     NVReadRAMDAC(dev, 0,
     NV_PRAMDAC_DACCLK +
     nv04_dac_output_offset(encoder));

 nv17_tv_state_save(dev, &tv_enc->saved_state);

 tv_enc->state.ptv_200 = tv_enc->saved_state.ptv_200;
}
