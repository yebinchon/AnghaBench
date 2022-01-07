
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pixelformat; int height; int width; } ;
struct tcm825x_sensor {int * v4l2_int_device; TYPE_3__ pix; struct i2c_client* i2c_client; TYPE_2__* platform_data; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_5__ {TYPE_2__* platform_data; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct TYPE_8__ {int height; int width; } ;
struct TYPE_6__ {int (* is_okay ) () ;} ;


 int EBUSY ;
 int ENODEV ;
 size_t QVGA ;
 int V4L2_PIX_FMT_RGB565 ;
 scalar_t__ i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,struct tcm825x_sensor*) ;
 int stub1 () ;
 struct tcm825x_sensor tcm825x ;
 int tcm825x_int_device ;
 TYPE_4__* tcm825x_sizes ;
 int v4l2_int_device_register (int *) ;

__attribute__((used)) static int tcm825x_probe(struct i2c_client *client,
    const struct i2c_device_id *did)
{
 struct tcm825x_sensor *sensor = &tcm825x;
 int rval;

 if (i2c_get_clientdata(client))
  return -EBUSY;

 sensor->platform_data = client->dev.platform_data;

 if (sensor->platform_data == ((void*)0)
     || !sensor->platform_data->is_okay())
  return -ENODEV;

 sensor->v4l2_int_device = &tcm825x_int_device;

 sensor->i2c_client = client;
 i2c_set_clientdata(client, sensor);


 sensor->pix.width = tcm825x_sizes[QVGA].width;
 sensor->pix.height = tcm825x_sizes[QVGA].height;
 sensor->pix.pixelformat = V4L2_PIX_FMT_RGB565;

 rval = v4l2_int_device_register(sensor->v4l2_int_device);
 if (rval)
  i2c_set_clientdata(client, ((void*)0));

 return rval;
}
