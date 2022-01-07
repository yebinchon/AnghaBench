
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcf8583 {int rtc; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; int adapter; } ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int i2c_check_functionality (int ,int ) ;
 int i2c_set_clientdata (struct i2c_client*,struct pcf8583*) ;
 int kfree (struct pcf8583*) ;
 struct pcf8583* kzalloc (int,int ) ;
 TYPE_2__ pcf8583_driver ;
 int pcf8583_rtc_ops ;
 int rtc_device_register (int ,int *,int *,int ) ;

__attribute__((used)) static int pcf8583_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 struct pcf8583 *pcf8583;
 int err;

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C))
  return -ENODEV;

 pcf8583 = kzalloc(sizeof(struct pcf8583), GFP_KERNEL);
 if (!pcf8583)
  return -ENOMEM;

 pcf8583->rtc = rtc_device_register(pcf8583_driver.driver.name,
   &client->dev, &pcf8583_rtc_ops, THIS_MODULE);

 if (IS_ERR(pcf8583->rtc)) {
  err = PTR_ERR(pcf8583->rtc);
  goto exit_kfree;
 }

 i2c_set_clientdata(client, pcf8583);
 return 0;

exit_kfree:
 kfree(pcf8583);
 return err;
}
