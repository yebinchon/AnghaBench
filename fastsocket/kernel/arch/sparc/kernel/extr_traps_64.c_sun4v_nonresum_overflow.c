
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int atomic_inc (int *) ;
 int sun4v_nonresum_oflow_cnt ;

void sun4v_nonresum_overflow(struct pt_regs *regs)
{



 atomic_inc(&sun4v_nonresum_oflow_cnt);
}
