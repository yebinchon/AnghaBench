
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcf8563 {scalar_t__ rtc; } ;
struct i2c_client {int dummy; } ;


 struct pcf8563* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct pcf8563*) ;
 int rtc_device_unregister (scalar_t__) ;

__attribute__((used)) static int pcf8563_remove(struct i2c_client *client)
{
 struct pcf8563 *pcf8563 = i2c_get_clientdata(client);

 if (pcf8563->rtc)
  rtc_device_unregister(pcf8563->rtc);

 kfree(pcf8563);

 return 0;
}
