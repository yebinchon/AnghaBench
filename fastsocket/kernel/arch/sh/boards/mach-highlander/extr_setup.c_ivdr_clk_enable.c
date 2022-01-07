
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int IVDR_CK_ON ;
 int PA_IVDRCTL ;
 int ctrl_inw (int ) ;
 int ctrl_outw (int,int ) ;

__attribute__((used)) static int ivdr_clk_enable(struct clk *clk)
{
 ctrl_outw(ctrl_inw(PA_IVDRCTL) | (1 << IVDR_CK_ON), PA_IVDRCTL);
 return 0;
}
