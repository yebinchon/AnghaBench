
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s35390a {int twentyfourhour; struct i2c_client** client; int rtc; } ;
struct rtc_time {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; scalar_t__ addr; int adapter; } ;
typedef int buf ;
struct TYPE_3__ {int name; } ;
struct TYPE_4__ {TYPE_1__ driver; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int S35390A_CMD_STATUS1 ;
 char S35390A_FLAG_24H ;
 int THIS_MODULE ;
 int dev_err (int *,char*,...) ;
 int dev_warn (int *,char*) ;
 int i2c_check_functionality (int ,int ) ;
 struct i2c_client* i2c_new_dummy (int ,scalar_t__) ;
 int i2c_set_clientdata (struct i2c_client*,struct s35390a*) ;
 int i2c_unregister_device (struct i2c_client*) ;
 int kfree (struct s35390a*) ;
 struct s35390a* kzalloc (int,int ) ;
 int rtc_device_register (int ,int *,int *,int ) ;
 int s35390a_disable_test_mode (struct s35390a*) ;
 TYPE_2__ s35390a_driver ;
 scalar_t__ s35390a_get_datetime (struct i2c_client*,struct rtc_time*) ;
 int s35390a_get_reg (struct s35390a*,int ,char*,int) ;
 int s35390a_reset (struct s35390a*) ;
 int s35390a_rtc_ops ;

__attribute__((used)) static int s35390a_probe(struct i2c_client *client,
    const struct i2c_device_id *id)
{
 int err;
 unsigned int i;
 struct s35390a *s35390a;
 struct rtc_time tm;
 char buf[1];

 if (!i2c_check_functionality(client->adapter, I2C_FUNC_I2C)) {
  err = -ENODEV;
  goto exit;
 }

 s35390a = kzalloc(sizeof(struct s35390a), GFP_KERNEL);
 if (!s35390a) {
  err = -ENOMEM;
  goto exit;
 }

 s35390a->client[0] = client;
 i2c_set_clientdata(client, s35390a);


 for (i = 1; i < 8; ++i) {
  s35390a->client[i] = i2c_new_dummy(client->adapter,
     client->addr + i);
  if (!s35390a->client[i]) {
   dev_err(&client->dev, "Address %02x unavailable\n",
      client->addr + i);
   err = -EBUSY;
   goto exit_dummy;
  }
 }

 err = s35390a_reset(s35390a);
 if (err < 0) {
  dev_err(&client->dev, "error resetting chip\n");
  goto exit_dummy;
 }

 err = s35390a_disable_test_mode(s35390a);
 if (err < 0) {
  dev_err(&client->dev, "error disabling test mode\n");
  goto exit_dummy;
 }

 err = s35390a_get_reg(s35390a, S35390A_CMD_STATUS1, buf, sizeof(buf));
 if (err < 0) {
  dev_err(&client->dev, "error checking 12/24 hour mode\n");
  goto exit_dummy;
 }
 if (buf[0] & S35390A_FLAG_24H)
  s35390a->twentyfourhour = 1;
 else
  s35390a->twentyfourhour = 0;

 if (s35390a_get_datetime(client, &tm) < 0)
  dev_warn(&client->dev, "clock needs to be set\n");

 s35390a->rtc = rtc_device_register(s35390a_driver.driver.name,
    &client->dev, &s35390a_rtc_ops, THIS_MODULE);

 if (IS_ERR(s35390a->rtc)) {
  err = PTR_ERR(s35390a->rtc);
  goto exit_dummy;
 }
 return 0;

exit_dummy:
 for (i = 1; i < 8; ++i)
  if (s35390a->client[i])
   i2c_unregister_device(s35390a->client[i]);
 kfree(s35390a);
 i2c_set_clientdata(client, ((void*)0));

exit:
 return err;
}
