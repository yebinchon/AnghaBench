
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; } ;


 scalar_t__ cprc_base ;
 int ctrl_inl (scalar_t__) ;
 int * ifc_table ;

__attribute__((used)) static void master_clk_init(struct clk *clk)
{
 int idx = (ctrl_inl(cprc_base + 0x00) >> 6) & 0x0007;
 clk->rate *= ifc_table[idx];
}
