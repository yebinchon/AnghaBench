
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc_i2c {int dummy; } ;


 int CCR_MEN ;
 int writeccr (struct mpc_i2c*,int ) ;

__attribute__((used)) static void mpc_i2c_stop(struct mpc_i2c *i2c)
{
 writeccr(i2c, CCR_MEN);
}
