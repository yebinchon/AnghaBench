
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc_i2c {int dummy; } ;


 int CCR_MEN ;
 int CCR_MSTA ;
 int CCR_MTX ;
 int udelay (int) ;
 int writeccr (struct mpc_i2c*,int) ;

__attribute__((used)) static void mpc_i2c_fixup(struct mpc_i2c *i2c)
{
 writeccr(i2c, 0);
 udelay(30);
 writeccr(i2c, CCR_MEN);
 udelay(30);
 writeccr(i2c, CCR_MSTA | CCR_MTX);
 udelay(30);
 writeccr(i2c, CCR_MSTA | CCR_MTX | CCR_MEN);
 udelay(30);
 writeccr(i2c, CCR_MEN);
 udelay(30);
}
