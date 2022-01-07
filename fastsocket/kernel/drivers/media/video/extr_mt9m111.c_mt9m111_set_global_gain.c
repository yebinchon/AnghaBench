
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt9m111 {int gain; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 int GLOBAL_GAIN ;
 int reg_write (int ,int) ;
 struct mt9m111* to_mt9m111 (struct i2c_client*) ;

__attribute__((used)) static int mt9m111_set_global_gain(struct i2c_client *client, int gain)
{
 struct mt9m111 *mt9m111 = to_mt9m111(client);
 u16 val;

 if (gain > 63 * 2 * 2)
  return -EINVAL;

 mt9m111->gain = gain;
 if ((gain >= 64 * 2) && (gain < 63 * 2 * 2))
  val = (1 << 10) | (1 << 9) | (gain / 4);
 else if ((gain >= 64) && (gain < 64 * 2))
  val = (1 << 9) | (gain / 2);
 else
  val = gain;

 return reg_write(GLOBAL_GAIN, val);
}
