
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct i2c_client {int dev; } ;


 struct rtc_device* i2c_get_clientdata (struct i2c_client*) ;
 int isl1208_sysfs_unregister (int *) ;
 int rtc_device_unregister (struct rtc_device*) ;

__attribute__((used)) static int
isl1208_remove(struct i2c_client *client)
{
 struct rtc_device *rtc = i2c_get_clientdata(client);

 isl1208_sysfs_unregister(&client->dev);
 rtc_device_unregister(rtc);

 return 0;
}
