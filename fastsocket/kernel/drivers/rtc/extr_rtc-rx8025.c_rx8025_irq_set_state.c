
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rx8025_data {int ctrl1; int client; } ;
struct i2c_client {scalar_t__ irq; } ;
struct device {int dummy; } ;


 int ENXIO ;
 int RX8025_BIT_CTRL1_CT ;
 int RX8025_BIT_CTRL1_CT_1HZ ;
 int RX8025_REG_CTRL1 ;
 struct rx8025_data* i2c_get_clientdata (struct i2c_client*) ;
 int rx8025_write_reg (int ,int ,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int rx8025_irq_set_state(struct device *dev, int enabled)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct rx8025_data *rx8025 = i2c_get_clientdata(client);
 int ctrl1;
 int err;

 if (client->irq <= 0)
  return -ENXIO;

 ctrl1 = rx8025->ctrl1 & ~RX8025_BIT_CTRL1_CT;
 if (enabled)
  ctrl1 |= RX8025_BIT_CTRL1_CT_1HZ;
 if (ctrl1 != rx8025->ctrl1) {
  rx8025->ctrl1 = ctrl1;
  err = rx8025_write_reg(rx8025->client, RX8025_REG_CTRL1,
           rx8025->ctrl1);
  if (err)
   return err;
 }

 return 0;
}
