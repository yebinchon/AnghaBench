
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s35390a {int rtc; scalar_t__* client; } ;
struct i2c_client {int dummy; } ;


 struct s35390a* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,int *) ;
 int i2c_unregister_device (scalar_t__) ;
 int kfree (struct s35390a*) ;
 int rtc_device_unregister (int ) ;

__attribute__((used)) static int s35390a_remove(struct i2c_client *client)
{
 unsigned int i;

 struct s35390a *s35390a = i2c_get_clientdata(client);
 for (i = 1; i < 8; ++i)
  if (s35390a->client[i])
   i2c_unregister_device(s35390a->client[i]);

 rtc_device_unregister(s35390a->rtc);
 kfree(s35390a);
 i2c_set_clientdata(client, ((void*)0));

 return 0;
}
