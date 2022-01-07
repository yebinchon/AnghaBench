
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_device {int dummy; } ;
typedef int flexcop_sram_type_t ;


 int flexcop_set_ibi_value (int ,int ,int ) ;
 int sram_chip ;
 int wan_ctrl_reg_71c ;

__attribute__((used)) static void flexcop_sram_set_chip(struct flexcop_device *fc,
  flexcop_sram_type_t type)
{
 flexcop_set_ibi_value(wan_ctrl_reg_71c, sram_chip, type);
}
