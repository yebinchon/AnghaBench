
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct migor_ts_priv {int irq; } ;
struct i2c_client {int dev; } ;


 struct migor_ts_priv* dev_get_drvdata (int *) ;
 scalar_t__ device_may_wakeup (int *) ;
 int disable_irq_wake (int ) ;

__attribute__((used)) static int migor_ts_resume(struct i2c_client *client)
{
 struct migor_ts_priv *priv = dev_get_drvdata(&client->dev);

 if (device_may_wakeup(&client->dev))
  disable_irq_wake(priv->irq);

 return 0;
}
