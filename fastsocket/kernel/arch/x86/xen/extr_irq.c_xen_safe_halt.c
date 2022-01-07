
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 scalar_t__ HYPERVISOR_sched_op (int ,int *) ;
 int SCHEDOP_block ;

__attribute__((used)) static void xen_safe_halt(void)
{

 if (HYPERVISOR_sched_op(SCHEDOP_block, ((void*)0)) != 0)
  BUG();
}
