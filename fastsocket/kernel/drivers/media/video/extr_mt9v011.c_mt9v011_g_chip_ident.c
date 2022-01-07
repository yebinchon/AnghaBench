
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_dbg_chip_ident {int dummy; } ;
struct i2c_client {int dummy; } ;


 int R00_MT9V011_CHIP_VERSION ;
 int V4L2_IDENT_MT9V011 ;
 int mt9v011_read (struct v4l2_subdev*,int ) ;
 int v4l2_chip_ident_i2c_client (struct i2c_client*,struct v4l2_dbg_chip_ident*,int ,int ) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v011_g_chip_ident(struct v4l2_subdev *sd,
    struct v4l2_dbg_chip_ident *chip)
{
 u16 version;
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 version = mt9v011_read(sd, R00_MT9V011_CHIP_VERSION);

 return v4l2_chip_ident_i2c_client(client, chip, V4L2_IDENT_MT9V011,
       version);
}
