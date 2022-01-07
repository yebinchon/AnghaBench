
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int lm90_read_reg (struct i2c_client*,int,int*) ;

__attribute__((used)) static int lm90_read16(struct i2c_client *client, u8 regh, u8 regl, u16 *value)
{
 int err;
 u8 oldh, newh, l;
 if ((err = lm90_read_reg(client, regh, &oldh))
  || (err = lm90_read_reg(client, regl, &l))
  || (err = lm90_read_reg(client, regh, &newh)))
  return err;
 if (oldh != newh) {
  err = lm90_read_reg(client, regl, &l);
  if (err)
   return err;
 }
 *value = (newh << 8) | l;

 return 0;
}
