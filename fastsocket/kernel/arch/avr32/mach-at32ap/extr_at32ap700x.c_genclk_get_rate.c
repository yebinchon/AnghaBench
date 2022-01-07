
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk {TYPE_1__* parent; int index; } ;
struct TYPE_2__ {unsigned long (* get_rate ) (TYPE_1__*) ;} ;


 int DIV ;
 int DIVEN ;
 int GCCTRL (int ) ;
 int PM_BFEXT (int ,int) ;
 int PM_BIT (int ) ;
 int pm_readl (int ) ;
 unsigned long stub1 (TYPE_1__*) ;

__attribute__((used)) static unsigned long genclk_get_rate(struct clk *clk)
{
 u32 control;
 unsigned long div = 1;

 control = pm_readl(GCCTRL(clk->index));
 if (control & PM_BIT(DIVEN))
  div = 2 * (PM_BFEXT(DIV, control) + 1);

 return clk->parent->get_rate(clk->parent) / div;
}
