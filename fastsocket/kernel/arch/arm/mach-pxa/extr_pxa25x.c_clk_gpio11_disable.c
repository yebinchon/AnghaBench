
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int gpio11_config_gpio ;
 int pxa2xx_mfp_config (int ,int) ;

__attribute__((used)) static void clk_gpio11_disable(struct clk *clk)
{
 pxa2xx_mfp_config(gpio11_config_gpio, 1);
}
