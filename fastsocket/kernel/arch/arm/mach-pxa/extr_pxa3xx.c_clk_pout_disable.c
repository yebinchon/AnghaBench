
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int OSCC ;
 int OSCC_PEN ;

__attribute__((used)) static void clk_pout_disable(struct clk *clk)
{
 OSCC &= ~OSCC_PEN;
}
