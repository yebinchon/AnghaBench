
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int slow_intr_mask; int ext_intr_handler_task; scalar_t__ regs; } ;


 scalar_t__ A_PL_ENABLE ;
 int F_PL_INTR_EXT ;
 int F_PL_INTR_SGE_DATA ;
 int schedule_work (int *) ;
 int writel (int,scalar_t__) ;

void t1_elmer0_ext_intr(struct adapter *adapter)
{





 adapter->slow_intr_mask &= ~F_PL_INTR_EXT;
 writel(adapter->slow_intr_mask | F_PL_INTR_SGE_DATA,
     adapter->regs + A_PL_ENABLE);
 schedule_work(&adapter->ext_intr_handler_task);
}
