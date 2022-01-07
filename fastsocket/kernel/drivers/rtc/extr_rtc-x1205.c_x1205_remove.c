
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct i2c_client {int dev; } ;


 struct rtc_device* i2c_get_clientdata (struct i2c_client*) ;
 int rtc_device_unregister (struct rtc_device*) ;
 int x1205_sysfs_unregister (int *) ;

__attribute__((used)) static int x1205_remove(struct i2c_client *client)
{
 struct rtc_device *rtc = i2c_get_clientdata(client);

 rtc_device_unregister(rtc);
 x1205_sysfs_unregister(&client->dev);
 return 0;
}
