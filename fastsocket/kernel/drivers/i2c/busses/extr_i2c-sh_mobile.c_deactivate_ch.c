
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {int dev; int clk; } ;


 int ICCR (struct sh_mobile_i2c_data*) ;
 int ICCR_ICE ;
 int ICIC (struct sh_mobile_i2c_data*) ;
 int ICSR (struct sh_mobile_i2c_data*) ;
 int clk_disable (int ) ;
 int ioread8 (int ) ;
 int iowrite8 (int,int ) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static void deactivate_ch(struct sh_mobile_i2c_data *pd)
{

 iowrite8(0, ICSR(pd));
 iowrite8(0, ICIC(pd));


 iowrite8(ioread8(ICCR(pd)) & ~ICCR_ICE, ICCR(pd));


 clk_disable(pd->clk);
 pm_runtime_put_sync(pd->dev);
}
