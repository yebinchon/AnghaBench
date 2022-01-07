
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tw9910_priv {int dummy; } ;
struct soc_camera_device {int * ops; } ;
struct TYPE_2__ {struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int kfree (struct tw9910_priv*) ;
 struct tw9910_priv* to_tw9910 (struct i2c_client*) ;

__attribute__((used)) static int tw9910_remove(struct i2c_client *client)
{
 struct tw9910_priv *priv = to_tw9910(client);
 struct soc_camera_device *icd = client->dev.platform_data;

 icd->ops = ((void*)0);
 kfree(priv);
 return 0;
}
