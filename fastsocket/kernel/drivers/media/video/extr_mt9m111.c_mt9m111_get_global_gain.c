
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int GLOBAL_GAIN ;
 int reg_read (int ) ;

__attribute__((used)) static int mt9m111_get_global_gain(struct i2c_client *client)
{
 int data;

 data = reg_read(GLOBAL_GAIN);
 if (data >= 0)
  return (data & 0x2f) * (1 << ((data >> 10) & 1)) *
   (1 << ((data >> 9) & 1));
 return data;
}
