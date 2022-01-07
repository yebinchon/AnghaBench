
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tvp514x_decoder {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct tvp514x_decoder*) ;
 struct tvp514x_decoder* to_decoder (struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int tvp514x_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct tvp514x_decoder *decoder = to_decoder(sd);

 v4l2_device_unregister_subdev(sd);
 kfree(decoder);
 return 0;
}
