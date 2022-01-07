
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * type; } ;
struct video_device {TYPE_1__ dev; } ;
struct mt9t031 {int exposure; int gain; int model; } ;
struct i2c_client {int dev; } ;
typedef int s32 ;


 int ENODEV ;
 int MT9T031_CHIP_ENABLE ;
 int MT9T031_CHIP_VERSION ;
 int V4L2_IDENT_MT9T031 ;
 int dev_dbg (int *,char*,int) ;
 int dev_err (int *,char*,...) ;
 int dev_info (int *,char*,int) ;
 int mt9t031_dev_type ;
 int mt9t031_idle (struct i2c_client*) ;
 int reg_read (struct i2c_client*,int ) ;
 int reg_write (struct i2c_client*,int ,int) ;
 struct video_device* soc_camera_i2c_to_vdev (struct i2c_client*) ;
 struct mt9t031* to_mt9t031 (struct i2c_client*) ;

__attribute__((used)) static int mt9t031_video_probe(struct i2c_client *client)
{
 struct mt9t031 *mt9t031 = to_mt9t031(client);
 struct video_device *vdev = soc_camera_i2c_to_vdev(client);
 s32 data;
 int ret;


 data = reg_write(client, MT9T031_CHIP_ENABLE, 1);
 dev_dbg(&client->dev, "write: %d\n", data);


 data = reg_read(client, MT9T031_CHIP_VERSION);

 switch (data) {
 case 0x1621:
  mt9t031->model = V4L2_IDENT_MT9T031;
  break;
 default:
  dev_err(&client->dev,
   "No MT9T031 chip detected, register read %x\n", data);
  return -ENODEV;
 }

 dev_info(&client->dev, "Detected a MT9T031 chip ID %x\n", data);

 ret = mt9t031_idle(client);
 if (ret < 0)
  dev_err(&client->dev, "Failed to initialise the camera\n");
 else
  vdev->dev.type = &mt9t031_dev_type;


 mt9t031->exposure = 255;
 mt9t031->gain = 64;

 return ret;
}
