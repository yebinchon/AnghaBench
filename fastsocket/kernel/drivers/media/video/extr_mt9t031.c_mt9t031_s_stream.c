
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int EIO ;
 int MT9T031_OUTPUT_CONTROL ;
 int reg_clear (struct i2c_client*,int ,int) ;
 int reg_set (struct i2c_client*,int ,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t031_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int ret;

 if (enable)

  ret = reg_set(client, MT9T031_OUTPUT_CONTROL, 2);
 else

  ret = reg_clear(client, MT9T031_OUTPUT_CONTROL, 2);

 if (ret < 0)
  return -EIO;

 return 0;
}
