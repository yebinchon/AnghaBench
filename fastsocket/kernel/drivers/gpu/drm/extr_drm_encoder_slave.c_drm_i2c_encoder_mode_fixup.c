
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {int (* mode_fixup ) (struct drm_encoder*,struct drm_display_mode const*,struct drm_display_mode*) ;} ;


 TYPE_1__* get_slave_funcs (struct drm_encoder*) ;
 int stub1 (struct drm_encoder*,struct drm_display_mode const*,struct drm_display_mode*) ;

bool drm_i2c_encoder_mode_fixup(struct drm_encoder *encoder,
  const struct drm_display_mode *mode,
  struct drm_display_mode *adjusted_mode)
{
 return get_slave_funcs(encoder)->mode_fixup(encoder, mode, adjusted_mode);
}
