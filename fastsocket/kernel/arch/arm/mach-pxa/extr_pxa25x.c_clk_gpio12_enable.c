
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int gpio12_config_32k ;
 int pxa2xx_mfp_config (int ,int) ;

__attribute__((used)) static void clk_gpio12_enable(struct clk *clk)
{
 pxa2xx_mfp_config(gpio12_config_32k, 1);
}
