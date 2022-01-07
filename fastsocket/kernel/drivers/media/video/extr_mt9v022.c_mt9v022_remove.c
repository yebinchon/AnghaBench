
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_camera_device {int * ops; } ;
struct mt9v022 {int dummy; } ;
struct TYPE_2__ {struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;


 int kfree (struct mt9v022*) ;
 int mt9v022_video_remove (struct soc_camera_device*) ;
 struct mt9v022* to_mt9v022 (struct i2c_client*) ;

__attribute__((used)) static int mt9v022_remove(struct i2c_client *client)
{
 struct mt9v022 *mt9v022 = to_mt9v022(client);
 struct soc_camera_device *icd = client->dev.platform_data;

 icd->ops = ((void*)0);
 mt9v022_video_remove(icd);
 kfree(mt9v022);

 return 0;
}
