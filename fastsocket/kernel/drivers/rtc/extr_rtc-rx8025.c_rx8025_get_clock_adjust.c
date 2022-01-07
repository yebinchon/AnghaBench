
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;


 int RX8025_ADJ_RESOLUTION ;
 int RX8025_REG_DIGOFF ;
 int rx8025_read_reg (struct i2c_client*,int ,int*) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int rx8025_get_clock_adjust(struct device *dev, int *adj)
{
 struct i2c_client *client = to_i2c_client(dev);
 u8 digoff;
 int err;

 err = rx8025_read_reg(client, RX8025_REG_DIGOFF, &digoff);
 if (err)
  return err;

 *adj = digoff >= 64 ? digoff - 128 : digoff;
 if (*adj > 0)
  (*adj)--;
 *adj *= -RX8025_ADJ_RESOLUTION;

 return 0;
}
