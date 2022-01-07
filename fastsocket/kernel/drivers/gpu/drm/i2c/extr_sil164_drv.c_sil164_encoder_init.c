
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sil164_priv {int duallink_slave; } ;
struct i2c_client {int dummy; } ;
struct drm_encoder_slave {int * slave_funcs; struct sil164_priv* slave_priv; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct sil164_priv* kzalloc (int,int ) ;
 int sil164_detect_slave (struct i2c_client*) ;
 int sil164_encoder_funcs ;

__attribute__((used)) static int
sil164_encoder_init(struct i2c_client *client,
      struct drm_device *dev,
      struct drm_encoder_slave *encoder)
{
 struct sil164_priv *priv;

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 encoder->slave_priv = priv;
 encoder->slave_funcs = &sil164_encoder_funcs;

 priv->duallink_slave = sil164_detect_slave(client);

 return 0;
}
