
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_i2c {scalar_t__ msg; } ;


 int I2C_RETRY ;
 int i2c_pxa_master_complete (struct pxa_i2c*,int ) ;

__attribute__((used)) static void i2c_pxa_slave_stop(struct pxa_i2c *i2c)
{
 if (i2c->msg)
  i2c_pxa_master_complete(i2c, I2C_RETRY);
}
