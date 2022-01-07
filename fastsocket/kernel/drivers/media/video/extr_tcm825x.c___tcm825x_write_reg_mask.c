
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int tcm825x_read_reg (struct i2c_client*,int) ;
 int tcm825x_write_reg (struct i2c_client*,int,int) ;

__attribute__((used)) static int __tcm825x_write_reg_mask(struct i2c_client *client,
        u8 reg, u8 val, u8 mask)
{
 int rc;


 rc = tcm825x_read_reg(client, reg);
 if (rc < 0)
  return rc;

 rc &= (~mask);
 val &= mask;
 val |= rc;


 rc = tcm825x_write_reg(client, reg, val);
 if (rc)
  return rc;

 return 0;
}
