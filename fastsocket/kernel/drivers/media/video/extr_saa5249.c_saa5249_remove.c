
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa5249_device {int vdev; } ;
struct i2c_client {int dummy; } ;


 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct saa5249_device*) ;
 struct saa5249_device* to_dev (struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static int saa5249_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct saa5249_device *t = to_dev(sd);

 video_unregister_device(t->vdev);
 v4l2_device_unregister_subdev(sd);
 kfree(t);
 return 0;
}
