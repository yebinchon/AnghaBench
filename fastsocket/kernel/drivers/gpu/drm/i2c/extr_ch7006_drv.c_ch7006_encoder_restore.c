
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct drm_encoder {int dummy; } ;
struct ch7006_priv {int saved_state; } ;


 int ch7006_dbg (struct i2c_client*,char*) ;
 int ch7006_state_load (struct i2c_client*,int *) ;
 struct i2c_client* drm_i2c_encoder_get_client (struct drm_encoder*) ;
 struct ch7006_priv* to_ch7006_priv (struct drm_encoder*) ;

__attribute__((used)) static void ch7006_encoder_restore(struct drm_encoder *encoder)
{
 struct i2c_client *client = drm_i2c_encoder_get_client(encoder);
 struct ch7006_priv *priv = to_ch7006_priv(encoder);

 ch7006_dbg(client, "\n");

 ch7006_state_load(client, &priv->saved_state);
}
