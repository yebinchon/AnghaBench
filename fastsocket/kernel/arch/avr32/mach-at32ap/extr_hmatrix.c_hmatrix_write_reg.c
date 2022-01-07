
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __hmatrix_read_reg (unsigned long) ;
 int __hmatrix_write_reg (unsigned long,int ) ;
 int at32_hmatrix_clk ;
 int clk_disable (int *) ;
 int clk_enable (int *) ;

void hmatrix_write_reg(unsigned long offset, u32 value)
{
 clk_enable(&at32_hmatrix_clk);
 __hmatrix_write_reg(offset, value);
 __hmatrix_read_reg(offset);
 clk_disable(&at32_hmatrix_clk);
}
