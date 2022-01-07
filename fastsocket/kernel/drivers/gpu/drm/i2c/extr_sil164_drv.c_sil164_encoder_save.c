
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sil164_priv {int saved_slave_state; scalar_t__ duallink_slave; int saved_state; } ;
struct drm_encoder {int dummy; } ;


 scalar_t__ drm_i2c_encoder_get_client (struct drm_encoder*) ;
 int sil164_save_state (scalar_t__,int ) ;
 struct sil164_priv* to_sil164_priv (struct drm_encoder*) ;

__attribute__((used)) static void
sil164_encoder_save(struct drm_encoder *encoder)
{
 struct sil164_priv *priv = to_sil164_priv(encoder);

 sil164_save_state(drm_i2c_encoder_get_client(encoder),
     priv->saved_state);

 if (priv->duallink_slave)
  sil164_save_state(priv->duallink_slave,
      priv->saved_slave_state);
}
