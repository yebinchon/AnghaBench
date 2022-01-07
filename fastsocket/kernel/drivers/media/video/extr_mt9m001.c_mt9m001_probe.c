
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_camera_link {int dummy; } ;
struct soc_camera_device {int * ops; } ;
struct TYPE_3__ {int height; int width; int top; int left; } ;
struct mt9m001 {int autoexposure; TYPE_1__ rect; scalar_t__ y_skip_top; int subdev; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int parent; struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_adapter {int dev; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int MT9M001_COLUMN_SKIP ;
 int MT9M001_MAX_HEIGHT ;
 int MT9M001_MAX_WIDTH ;
 int MT9M001_ROW_SKIP ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_warn (int *,char*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int kfree (struct mt9m001*) ;
 struct mt9m001* kzalloc (int,int ) ;
 int mt9m001_ops ;
 int mt9m001_subdev_ops ;
 int mt9m001_video_probe (struct soc_camera_device*,struct i2c_client*) ;
 struct i2c_adapter* to_i2c_adapter (int ) ;
 struct soc_camera_link* to_soc_camera_link (struct soc_camera_device*) ;
 int v4l2_i2c_subdev_init (int *,struct i2c_client*,int *) ;

__attribute__((used)) static int mt9m001_probe(struct i2c_client *client,
    const struct i2c_device_id *did)
{
 struct mt9m001 *mt9m001;
 struct soc_camera_device *icd = client->dev.platform_data;
 struct i2c_adapter *adapter = to_i2c_adapter(client->dev.parent);
 struct soc_camera_link *icl;
 int ret;

 if (!icd) {
  dev_err(&client->dev, "MT9M001: missing soc-camera data!\n");
  return -EINVAL;
 }

 icl = to_soc_camera_link(icd);
 if (!icl) {
  dev_err(&client->dev, "MT9M001 driver needs platform data\n");
  return -EINVAL;
 }

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_WORD_DATA)) {
  dev_warn(&adapter->dev,
    "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
  return -EIO;
 }

 mt9m001 = kzalloc(sizeof(struct mt9m001), GFP_KERNEL);
 if (!mt9m001)
  return -ENOMEM;

 v4l2_i2c_subdev_init(&mt9m001->subdev, client, &mt9m001_subdev_ops);


 icd->ops = &mt9m001_ops;

 mt9m001->y_skip_top = 0;
 mt9m001->rect.left = MT9M001_COLUMN_SKIP;
 mt9m001->rect.top = MT9M001_ROW_SKIP;
 mt9m001->rect.width = MT9M001_MAX_WIDTH;
 mt9m001->rect.height = MT9M001_MAX_HEIGHT;





 mt9m001->autoexposure = 1;

 ret = mt9m001_video_probe(icd, client);
 if (ret) {
  icd->ops = ((void*)0);
  kfree(mt9m001);
 }

 return ret;
}
