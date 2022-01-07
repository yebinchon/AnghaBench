
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __hmatrix_read_reg (unsigned long) ;
 int at32_hmatrix_clk ;
 int clk_disable (int *) ;
 int clk_enable (int *) ;

u32 hmatrix_read_reg(unsigned long offset)
{
 u32 value;

 clk_enable(&at32_hmatrix_clk);
 value = __hmatrix_read_reg(offset);
 clk_disable(&at32_hmatrix_clk);

 return value;
}
