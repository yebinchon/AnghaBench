
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ISL29003_REG_COMMAND ;
 int ISL29003_RES_MASK ;
 int ISL29003_RES_SHIFT ;
 int __isl29003_write_reg (struct i2c_client*,int ,int ,int ,int) ;

__attribute__((used)) static int isl29003_set_resolution(struct i2c_client *client, int res)
{
 return __isl29003_write_reg(client, ISL29003_REG_COMMAND,
  ISL29003_RES_MASK, ISL29003_RES_SHIFT, res);
}
