
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HMATRIX_SFR (unsigned int) ;
 int __hmatrix_read_reg (int ) ;
 int __hmatrix_write_reg (int ,int ) ;
 int at32_hmatrix_clk ;
 int clk_disable (int *) ;
 int clk_enable (int *) ;

void hmatrix_sfr_clear_bits(unsigned int slave_id, u32 mask)
{
 u32 value;

 clk_enable(&at32_hmatrix_clk);
 value = __hmatrix_read_reg(HMATRIX_SFR(slave_id));
 value &= ~mask;
 __hmatrix_write_reg(HMATRIX_SFR(slave_id), value);
 __hmatrix_read_reg(HMATRIX_SFR(slave_id));
 clk_disable(&at32_hmatrix_clk);
}
