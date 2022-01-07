
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pll; } ;
typedef TYPE_1__ reg_config_rw_clk_ctrl ;


 TYPE_1__ REG_RD (int ,int ,int ) ;
 int config ;
 int regi_config ;
 int rw_clk_ctrl ;

__attribute__((used)) static unsigned int cris_freq_get_cpu_frequency(unsigned int cpu)
{
 reg_config_rw_clk_ctrl clk_ctrl;
 clk_ctrl = REG_RD(config, regi_config, rw_clk_ctrl);
 return clk_ctrl.pll ? 200000 : 6000;
}
