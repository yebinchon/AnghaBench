
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_hardware_context {int * ext_reg_tbl; int * reg_tbl; int * hw_ops; } ;


 scalar_t__ qlcnic_83xx_ext_reg_tbl ;
 int qlcnic_83xx_hw_ops ;
 scalar_t__ qlcnic_83xx_reg_tbl ;

void qlcnic_83xx_register_map(struct qlcnic_hardware_context *ahw)
{
 ahw->hw_ops = &qlcnic_83xx_hw_ops;
 ahw->reg_tbl = (u32 *)qlcnic_83xx_reg_tbl;
 ahw->ext_reg_tbl = (u32 *)qlcnic_83xx_ext_reg_tbl;
}
