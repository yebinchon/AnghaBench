
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int8_t ;
typedef int u_int32_t ;
struct sh_mobile_i2c_data {int iccl; int icch; int clk; int dev; } ;


 int ICCH (struct sh_mobile_i2c_data*) ;
 int ICCL (struct sh_mobile_i2c_data*) ;
 int ICCR (struct sh_mobile_i2c_data*) ;
 int ICCR_ICE ;
 int ICIC (struct sh_mobile_i2c_data*) ;
 int NORMAL_SPEED ;
 int clk_enable (int ) ;
 unsigned long clk_get_rate (int ) ;
 int ioread8 (int ) ;
 int iowrite8 (int,int ) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static void activate_ch(struct sh_mobile_i2c_data *pd)
{
 unsigned long i2c_clk;
 u_int32_t num;
 u_int32_t denom;
 u_int32_t tmp;


 pm_runtime_get_sync(pd->dev);
 clk_enable(pd->clk);


 i2c_clk = clk_get_rate(pd->clk);






 num = i2c_clk * 5;
 denom = NORMAL_SPEED * 9;
 tmp = num * 10 / denom;
 if (tmp % 10 >= 5)
  pd->iccl = (u_int8_t)((num/denom) + 1);
 else
  pd->iccl = (u_int8_t)(num/denom);



 num = i2c_clk * 4;
 tmp = num * 10 / denom;
 if (tmp % 10 >= 5)
  pd->icch = (u_int8_t)((num/denom) + 1);
 else
  pd->icch = (u_int8_t)(num/denom);


 iowrite8(ioread8(ICCR(pd)) | ICCR_ICE, ICCR(pd));


 iowrite8(0, ICIC(pd));


 iowrite8(pd->iccl, ICCL(pd));
 iowrite8(pd->icch, ICCH(pd));
}
