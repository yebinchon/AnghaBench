
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_camera_link {int dummy; } ;
struct soc_camera_device {int * ops; } ;
struct TYPE_3__ {int height; int width; int top; int left; } ;
struct mt9v022 {int y_skip_top; TYPE_1__ rect; int chip_control; int subdev; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int parent; struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_2__ dev; } ;
struct i2c_adapter {int dev; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_WORD_DATA ;
 int MT9V022_CHIP_CONTROL_DEFAULT ;
 int MT9V022_COLUMN_SKIP ;
 int MT9V022_MAX_HEIGHT ;
 int MT9V022_MAX_WIDTH ;
 int MT9V022_ROW_SKIP ;
 int dev_err (TYPE_2__*,char*) ;
 int dev_warn (int *,char*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int kfree (struct mt9v022*) ;
 struct mt9v022* kzalloc (int,int ) ;
 int mt9v022_ops ;
 int mt9v022_subdev_ops ;
 int mt9v022_video_probe (struct soc_camera_device*,struct i2c_client*) ;
 struct i2c_adapter* to_i2c_adapter (int ) ;
 struct soc_camera_link* to_soc_camera_link (struct soc_camera_device*) ;
 int v4l2_i2c_subdev_init (int *,struct i2c_client*,int *) ;

__attribute__((used)) static int mt9v022_probe(struct i2c_client *client,
    const struct i2c_device_id *did)
{
 struct mt9v022 *mt9v022;
 struct soc_camera_device *icd = client->dev.platform_data;
 struct i2c_adapter *adapter = to_i2c_adapter(client->dev.parent);
 struct soc_camera_link *icl;
 int ret;

 if (!icd) {
  dev_err(&client->dev, "MT9V022: missing soc-camera data!\n");
  return -EINVAL;
 }

 icl = to_soc_camera_link(icd);
 if (!icl) {
  dev_err(&client->dev, "MT9V022 driver needs platform data\n");
  return -EINVAL;
 }

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_WORD_DATA)) {
  dev_warn(&adapter->dev,
    "I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\n");
  return -EIO;
 }

 mt9v022 = kzalloc(sizeof(struct mt9v022), GFP_KERNEL);
 if (!mt9v022)
  return -ENOMEM;

 v4l2_i2c_subdev_init(&mt9v022->subdev, client, &mt9v022_subdev_ops);

 mt9v022->chip_control = MT9V022_CHIP_CONTROL_DEFAULT;

 icd->ops = &mt9v022_ops;




 mt9v022->y_skip_top = 1;
 mt9v022->rect.left = MT9V022_COLUMN_SKIP;
 mt9v022->rect.top = MT9V022_ROW_SKIP;
 mt9v022->rect.width = MT9V022_MAX_WIDTH;
 mt9v022->rect.height = MT9V022_MAX_HEIGHT;

 ret = mt9v022_video_probe(icd, client);
 if (ret) {
  icd->ops = ((void*)0);
  kfree(mt9v022);
 }

 return ret;
}
