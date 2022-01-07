
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9m111 {scalar_t__ context; } ;
struct i2c_client {int dummy; } ;


 scalar_t__ HIGHPOWER ;
 int READ_MODE_A ;
 int READ_MODE_B ;
 int reg_clear (int ,int) ;
 int reg_set (int ,int) ;
 struct mt9m111* to_mt9m111 (struct i2c_client*) ;

__attribute__((used)) static int mt9m111_set_flip(struct i2c_client *client, int flip, int mask)
{
 struct mt9m111 *mt9m111 = to_mt9m111(client);
 int ret;

 if (mt9m111->context == HIGHPOWER) {
  if (flip)
   ret = reg_set(READ_MODE_B, mask);
  else
   ret = reg_clear(READ_MODE_B, mask);
 } else {
  if (flip)
   ret = reg_set(READ_MODE_A, mask);
  else
   ret = reg_clear(READ_MODE_A, mask);
 }

 return ret;
}
