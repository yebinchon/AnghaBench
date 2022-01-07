
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs5c372 {int rtc; } ;
struct i2c_client {int dev; } ;


 struct rs5c372* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct rs5c372*) ;
 int rs5c_sysfs_unregister (int *) ;
 int rtc_device_unregister (int ) ;

__attribute__((used)) static int rs5c372_remove(struct i2c_client *client)
{
 struct rs5c372 *rs5c372 = i2c_get_clientdata(client);

 rtc_device_unregister(rs5c372->rtc);
 rs5c_sysfs_unregister(&client->dev);
 kfree(rs5c372);
 return 0;
}
