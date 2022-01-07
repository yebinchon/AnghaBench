
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wf_sat {int * i2c; } ;
struct i2c_client {int dummy; } ;


 struct wf_sat* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;

__attribute__((used)) static int wf_sat_remove(struct i2c_client *client)
{
 struct wf_sat *sat = i2c_get_clientdata(client);



 sat->i2c = ((void*)0);
 i2c_set_clientdata(client, ((void*)0));
 return 0;
}
