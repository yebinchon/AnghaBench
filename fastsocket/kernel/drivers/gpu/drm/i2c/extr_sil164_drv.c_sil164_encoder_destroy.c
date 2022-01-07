
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sil164_priv {scalar_t__ duallink_slave; } ;
struct drm_encoder {int dummy; } ;


 int drm_i2c_encoder_destroy (struct drm_encoder*) ;
 int i2c_unregister_device (scalar_t__) ;
 int kfree (struct sil164_priv*) ;
 struct sil164_priv* to_sil164_priv (struct drm_encoder*) ;

__attribute__((used)) static void
sil164_encoder_destroy(struct drm_encoder *encoder)
{
 struct sil164_priv *priv = to_sil164_priv(encoder);

 if (priv->duallink_slave)
  i2c_unregister_device(priv->duallink_slave);

 kfree(priv);
 drm_i2c_encoder_destroy(encoder);
}
