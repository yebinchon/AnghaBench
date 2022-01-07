
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct ov7670_info {int clock_speed; int sat; int clkrc; int * fmt; int use_smbus; int min_height; int min_width; } ;
struct ov7670_config {int clock_speed; int use_smbus; int min_height; int min_width; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int name; } ;


 int debug ;
 int kfree (struct ov7670_info*) ;
 int ov7670_detect (struct v4l2_subdev*) ;
 int * ov7670_formats ;
 struct ov7670_info* to_state (struct v4l2_subdev*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,int,int ) ;
 int v4l_info (struct i2c_client*,char*,int,int ) ;

__attribute__((used)) static int ov7670_s_config(struct v4l2_subdev *sd, int dumb, void *data)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct ov7670_config *config = data;
 struct ov7670_info *info = to_state(sd);
 int ret;

 info->clock_speed = 30;





 if (config) {
  info->min_width = config->min_width;
  info->min_height = config->min_height;
  info->use_smbus = config->use_smbus;

  if (config->clock_speed)
   info->clock_speed = config->clock_speed;
 }


 ret = ov7670_detect(sd);
 if (ret) {
  v4l_dbg(1, debug, client,
   "chip found @ 0x%x (%s) is not an ov7670 chip.\n",
   client->addr << 1, client->adapter->name);
  kfree(info);
  return ret;
 }
 v4l_info(client, "chip found @ 0x%02x (%s)\n",
   client->addr << 1, client->adapter->name);

 info->fmt = &ov7670_formats[0];
 info->sat = 128;
 info->clkrc = info->clock_speed / 30;

 return 0;
}
