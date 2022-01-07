
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct ch7006_priv {int mode; } ;


 int ch7006_lookup_mode (struct drm_encoder*,struct drm_display_mode const*) ;
 struct ch7006_priv* to_ch7006_priv (struct drm_encoder*) ;

__attribute__((used)) static bool ch7006_encoder_mode_fixup(struct drm_encoder *encoder,
          const struct drm_display_mode *mode,
          struct drm_display_mode *adjusted_mode)
{
 struct ch7006_priv *priv = to_ch7006_priv(encoder);




 priv->mode = ch7006_lookup_mode(encoder, mode);

 return !!priv->mode;
}
