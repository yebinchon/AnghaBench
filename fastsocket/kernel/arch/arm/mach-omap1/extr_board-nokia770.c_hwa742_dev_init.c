
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_add_alias (char*,int *,char*,int *) ;
 int nokia770_hwa742_platform_data ;
 int omapfb_set_ctrl_platform_data (int *) ;

__attribute__((used)) static void hwa742_dev_init(void)
{
 clk_add_alias("hwa_sys_ck", ((void*)0), "bclk", ((void*)0));
 omapfb_set_ctrl_platform_data(&nokia770_hwa742_platform_data);
}
