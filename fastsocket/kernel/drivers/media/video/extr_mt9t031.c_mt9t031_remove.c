
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_device {int * ops; } ;
struct mt9t031 {int dummy; } ;
struct TYPE_2__ {struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int kfree (struct mt9t031*) ;
 struct mt9t031* to_mt9t031 (struct i2c_client*) ;

__attribute__((used)) static int mt9t031_remove(struct i2c_client *client)
{
 struct mt9t031 *mt9t031 = to_mt9t031(client);
 struct soc_camera_device *icd = client->dev.platform_data;

 if (icd)
  icd->ops = ((void*)0);
 kfree(mt9t031);

 return 0;
}
