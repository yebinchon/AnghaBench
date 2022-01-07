
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tw9910_video_info {int dummy; } ;
struct tw9910_priv {int subdev; struct tw9910_video_info* info; } ;
struct soc_camera_link {int bus_id; struct tw9910_video_info* priv; } ;
struct soc_camera_device {int * ops; int iface; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_2__ {int parent; struct soc_camera_device* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct i2c_adapter {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_SMBUS_BYTE_DATA ;
 int dev_err (TYPE_1__*,char*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int kfree (struct tw9910_priv*) ;
 struct tw9910_priv* kzalloc (int,int ) ;
 struct i2c_adapter* to_i2c_adapter (int ) ;
 struct soc_camera_link* to_soc_camera_link (struct soc_camera_device*) ;
 int tw9910_ops ;
 int tw9910_subdev_ops ;
 int tw9910_video_probe (struct soc_camera_device*,struct i2c_client*) ;
 int v4l2_i2c_subdev_init (int *,struct i2c_client*,int *) ;

__attribute__((used)) static int tw9910_probe(struct i2c_client *client,
   const struct i2c_device_id *did)

{
 struct tw9910_priv *priv;
 struct tw9910_video_info *info;
 struct soc_camera_device *icd = client->dev.platform_data;
 struct i2c_adapter *adapter =
  to_i2c_adapter(client->dev.parent);
 struct soc_camera_link *icl;
 int ret;

 if (!icd) {
  dev_err(&client->dev, "TW9910: missing soc-camera data!\n");
  return -EINVAL;
 }

 icl = to_soc_camera_link(icd);
 if (!icl || !icl->priv)
  return -EINVAL;

 info = icl->priv;

 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
  dev_err(&client->dev,
   "I2C-Adapter doesn't support "
   "I2C_FUNC_SMBUS_BYTE_DATA\n");
  return -EIO;
 }

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->info = info;

 v4l2_i2c_subdev_init(&priv->subdev, client, &tw9910_subdev_ops);

 icd->ops = &tw9910_ops;
 icd->iface = icl->bus_id;

 ret = tw9910_video_probe(icd, client);
 if (ret) {
  icd->ops = ((void*)0);
  kfree(priv);
 }

 return ret;
}
