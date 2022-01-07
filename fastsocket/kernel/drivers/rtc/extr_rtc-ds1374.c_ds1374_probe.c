
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int dummy; } ;
struct i2c_client {scalar_t__ irq; int dev; int name; } ;
struct ds1374 {int rtc; int mutex; int work; struct i2c_client* client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 int ds1374_check_rtc_status (struct i2c_client*) ;
 int ds1374_irq ;
 int ds1374_rtc_ops ;
 int ds1374_work ;
 int free_irq (scalar_t__,struct i2c_client*) ;
 int i2c_set_clientdata (struct i2c_client*,struct ds1374*) ;
 int kfree (struct ds1374*) ;
 struct ds1374* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int request_irq (scalar_t__,int ,int ,char*,struct i2c_client*) ;
 int rtc_device_register (int ,int *,int *,int ) ;

__attribute__((used)) static int ds1374_probe(struct i2c_client *client,
   const struct i2c_device_id *id)
{
 struct ds1374 *ds1374;
 int ret;

 ds1374 = kzalloc(sizeof(struct ds1374), GFP_KERNEL);
 if (!ds1374)
  return -ENOMEM;

 ds1374->client = client;
 i2c_set_clientdata(client, ds1374);

 INIT_WORK(&ds1374->work, ds1374_work);
 mutex_init(&ds1374->mutex);

 ret = ds1374_check_rtc_status(client);
 if (ret)
  goto out_free;

 if (client->irq > 0) {
  ret = request_irq(client->irq, ds1374_irq, 0,
                    "ds1374", client);
  if (ret) {
   dev_err(&client->dev, "unable to request IRQ\n");
   goto out_free;
  }
 }

 ds1374->rtc = rtc_device_register(client->name, &client->dev,
                                   &ds1374_rtc_ops, THIS_MODULE);
 if (IS_ERR(ds1374->rtc)) {
  ret = PTR_ERR(ds1374->rtc);
  dev_err(&client->dev, "unable to register the class device\n");
  goto out_irq;
 }

 return 0;

out_irq:
 if (client->irq > 0)
  free_irq(client->irq, client);

out_free:
 i2c_set_clientdata(client, ((void*)0));
 kfree(ds1374);
 return ret;
}
