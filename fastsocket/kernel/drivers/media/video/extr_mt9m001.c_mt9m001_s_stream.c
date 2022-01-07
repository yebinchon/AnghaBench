
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int EIO ;
 int MT9M001_OUTPUT_CONTROL ;
 scalar_t__ reg_write (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9m001_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);


 if (reg_write(client, MT9M001_OUTPUT_CONTROL, enable ? 2 : 0) < 0)
  return -EIO;
 return 0;
}
