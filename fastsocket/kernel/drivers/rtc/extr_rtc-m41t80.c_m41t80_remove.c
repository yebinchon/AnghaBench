
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct m41t80_data {int features; struct rtc_device* rtc; } ;
struct i2c_client {int dummy; } ;


 int M41T80_FEATURE_HT ;
 struct m41t80_data* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct m41t80_data*) ;
 int misc_deregister (int *) ;
 int rtc_device_unregister (struct rtc_device*) ;
 int unregister_reboot_notifier (int *) ;
 int wdt_dev ;
 int wdt_notifier ;

__attribute__((used)) static int m41t80_remove(struct i2c_client *client)
{
 struct m41t80_data *clientdata = i2c_get_clientdata(client);
 struct rtc_device *rtc = clientdata->rtc;







 if (rtc)
  rtc_device_unregister(rtc);
 kfree(clientdata);

 return 0;
}
