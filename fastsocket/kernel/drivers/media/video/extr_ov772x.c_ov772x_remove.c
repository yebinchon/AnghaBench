
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_device {int * ops; } ;
struct ov772x_priv {int dummy; } ;
struct TYPE_2__ {struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int kfree (struct ov772x_priv*) ;
 struct ov772x_priv* to_ov772x (struct i2c_client*) ;

__attribute__((used)) static int ov772x_remove(struct i2c_client *client)
{
 struct ov772x_priv *priv = to_ov772x(client);
 struct soc_camera_device *icd = client->dev.platform_data;

 icd->ops = ((void*)0);
 kfree(priv);
 return 0;
}
