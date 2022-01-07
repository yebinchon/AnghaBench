
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovcamchip_regvals {int reg; int val; } ;
struct i2c_client {int dummy; } ;


 int ov_write (struct i2c_client*,int,int ) ;

int ov_write_regvals(struct i2c_client *c, struct ovcamchip_regvals *rvals)
{
 int rc;

 while (rvals->reg != 0xff) {
  rc = ov_write(c, rvals->reg, rvals->val);
  if (rc < 0)
   return rc;
  rvals++;
 }

 return 0;
}
