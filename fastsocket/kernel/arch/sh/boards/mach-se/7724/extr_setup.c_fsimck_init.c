
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int enable_reg; } ;


 int ctrl_inl (int ) ;
 int ctrl_outl (int,int ) ;

__attribute__((used)) static void fsimck_init(struct clk *clk)
{
 u32 status = ctrl_inl(clk->enable_reg);


 status &= ~0x000000ff;
 status |= 0x00000080;
 ctrl_outl(status, clk->enable_reg);
}
