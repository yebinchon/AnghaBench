
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
struct rtc_time {int dummy; } ;
struct i2c_client {int dev; } ;


 int X1205_CCR_BASE ;
 int dev_err (int *,char*) ;
 int memset (struct rtc_time*,int ,int) ;
 int x1205_set_datetime (struct i2c_client*,struct rtc_time*,int,int ,int ) ;

__attribute__((used)) static int x1205_fix_osc(struct i2c_client *client)
{
 int err;
 struct rtc_time tm;

 memset(&tm, 0, sizeof(tm));

 err = x1205_set_datetime(client, &tm, 1, X1205_CCR_BASE, 0);
 if (err < 0)
  dev_err(&client->dev, "unable to restart the oscillator\n");

 return err;
}
