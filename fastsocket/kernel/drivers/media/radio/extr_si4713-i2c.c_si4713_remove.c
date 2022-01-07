
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct si4713_device {scalar_t__ power_state; } ;
struct i2c_client {scalar_t__ irq; } ;


 int POWER_DOWN ;
 int free_irq (scalar_t__,struct si4713_device*) ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct si4713_device*) ;
 int si4713_set_power_state (struct si4713_device*,int ) ;
 struct si4713_device* to_si4713_device (struct v4l2_subdev*) ;
 int v4l2_device_unregister_subdev (struct v4l2_subdev*) ;

__attribute__((used)) static int si4713_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct si4713_device *sdev = to_si4713_device(sd);

 if (sdev->power_state)
  si4713_set_power_state(sdev, POWER_DOWN);

 if (client->irq > 0)
  free_irq(client->irq, sdev);

 v4l2_device_unregister_subdev(sd);

 kfree(sdev);

 return 0;
}
