
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_camera_link {int dummy; } ;
struct soc_camera_device {int * ops; } ;
struct TYPE_3__ {int height; int width; int top; int left; } ;
struct mt9t031 {int autoexposure; int xskip; int yskip; TYPE_1__ rect; scalar_t__ y_skip_top; int subdev; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int parent; struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_adapter {int dev; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int MT9T031_COLUMN_SKIP ;
 int MT9T031_MAX_HEIGHT ;
 int MT9T031_MAX_WIDTH ;
 int MT9T031_ROW_SKIP ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_warn (int *,char*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int kfree (struct mt9t031*) ;
 struct mt9t031* kzalloc (int,int ) ;
 int mt9t031_disable (struct i2c_client*) ;
 int mt9t031_idle (struct i2c_client*) ;
 int mt9t031_ops ;
 int mt9t031_subdev_ops ;
 int mt9t031_video_probe (struct i2c_client*) ;
 struct i2c_adapter* to_i2c_adapter (int ) ;
 struct soc_camera_link* to_soc_camera_link (struct soc_camera_device*) ;
 int v4l2_i2c_subdev_init (int *,struct i2c_client*,int *) ;

__attribute__((used)) static int mt9t031_probe(struct i2c_client *client,
    const struct i2c_device_id *did)
{
 struct mt9t031 *mt9t031;
 struct soc_camera_device *icd = client->dev.platform_data;
 struct i2c_adapter *adapter = to_i2c_adapter(client->dev.parent);
 int ret;

 if (icd) {
  struct soc_camera_link *icl = to_soc_camera_link(icd);
  if (!icl) {
   dev_err(&client->dev, "MT9T031 driver needs platform data\n");
   return -EINVAL;
  }

  icd->ops = &mt9t031_ops;
 }

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_WORD_DATA)) {
  dev_warn(&adapter->dev,
    "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
  return -EIO;
 }

 mt9t031 = kzalloc(sizeof(struct mt9t031), GFP_KERNEL);
 if (!mt9t031)
  return -ENOMEM;

 v4l2_i2c_subdev_init(&mt9t031->subdev, client, &mt9t031_subdev_ops);

 mt9t031->y_skip_top = 0;
 mt9t031->rect.left = MT9T031_COLUMN_SKIP;
 mt9t031->rect.top = MT9T031_ROW_SKIP;
 mt9t031->rect.width = MT9T031_MAX_WIDTH;
 mt9t031->rect.height = MT9T031_MAX_HEIGHT;





 mt9t031->autoexposure = 1;

 mt9t031->xskip = 1;
 mt9t031->yskip = 1;

 mt9t031_idle(client);

 ret = mt9t031_video_probe(client);

 mt9t031_disable(client);

 if (ret) {
  if (icd)
   icd->ops = ((void*)0);
  kfree(mt9t031);
 }

 return ret;
}
