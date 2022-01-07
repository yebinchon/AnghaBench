
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ addr; } ;
struct v4l2_dbg_chip_ident {scalar_t__ revision; int ident; TYPE_1__ match; } ;
struct mt9v022 {int model; } ;
struct i2c_client {scalar_t__ addr; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ V4L2_CHIP_MATCH_I2C_ADDR ;
 struct mt9v022* to_mt9v022 (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v022_g_chip_ident(struct v4l2_subdev *sd,
    struct v4l2_dbg_chip_ident *id)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 struct mt9v022 *mt9v022 = to_mt9v022(client);

 if (id->match.type != V4L2_CHIP_MATCH_I2C_ADDR)
  return -EINVAL;

 if (id->match.addr != client->addr)
  return -ENODEV;

 id->ident = mt9v022->model;
 id->revision = 0;

 return 0;
}
