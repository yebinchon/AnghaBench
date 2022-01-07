
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_6690_sensor {int sens; int * i2c; } ;
struct i2c_client {int dummy; } ;


 struct wf_6690_sensor* i2c_get_clientdata (struct i2c_client*) ;
 int wf_unregister_sensor (int *) ;

__attribute__((used)) static int wf_max6690_remove(struct i2c_client *client)
{
 struct wf_6690_sensor *max = i2c_get_clientdata(client);

 max->i2c = ((void*)0);
 wf_unregister_sensor(&max->sens);

 return 0;
}
