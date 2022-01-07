
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int parent; } ;
struct soc_camera_device {scalar_t__ iface; TYPE_1__ dev; } ;
struct ov772x_priv {int model; } ;
struct i2c_client {int dev; } ;
struct TYPE_4__ {scalar_t__ nr; } ;


 int ENODEV ;
 int MIDH ;
 int MIDL ;


 int PID ;
 int V4L2_IDENT_OV7720 ;
 int V4L2_IDENT_OV7725 ;
 int VER ;
 int VERSION (int ,int ) ;
 int dev_err (int *,char*,int ,int ) ;
 int dev_info (int *,char*,char const*,int ,int ,int ,int ) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 struct ov772x_priv* to_ov772x (struct i2c_client*) ;
 TYPE_2__* to_soc_camera_host (int ) ;

__attribute__((used)) static int ov772x_video_probe(struct soc_camera_device *icd,
         struct i2c_client *client)
{
 struct ov772x_priv *priv = to_ov772x(client);
 u8 pid, ver;
 const char *devname;





 if (!icd->dev.parent ||
     to_soc_camera_host(icd->dev.parent)->nr != icd->iface)
  return -ENODEV;




 pid = i2c_smbus_read_byte_data(client, PID);
 ver = i2c_smbus_read_byte_data(client, VER);

 switch (VERSION(pid, ver)) {
 case 129:
  devname = "ov7720";
  priv->model = V4L2_IDENT_OV7720;
  break;
 case 128:
  devname = "ov7725";
  priv->model = V4L2_IDENT_OV7725;
  break;
 default:
  dev_err(&client->dev,
   "Product ID error %x:%x\n", pid, ver);
  return -ENODEV;
 }

 dev_info(&client->dev,
   "%s Product ID %0x:%0x Manufacturer ID %x:%x\n",
   devname,
   pid,
   ver,
   i2c_smbus_read_byte_data(client, MIDH),
   i2c_smbus_read_byte_data(client, MIDL));

 return 0;
}
