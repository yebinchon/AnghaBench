
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;


 int determine_norm (struct i2c_client*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7180_querystd(struct v4l2_subdev *sd, v4l2_std_id *std)
{
 struct i2c_client *client = v4l2_get_subdevdata(sd);

 *std = determine_norm(client);
 return 0;
}
