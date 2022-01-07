
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int gpio11_config_3m6 ;
 int pxa2xx_mfp_config (int ,int) ;

__attribute__((used)) static void clk_gpio11_enable(struct clk *clk)
{
 pxa2xx_mfp_config(gpio11_config_3m6, 1);
}
