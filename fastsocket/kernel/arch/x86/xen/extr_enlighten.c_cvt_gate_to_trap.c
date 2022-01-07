
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct trap_info {int vector; unsigned long address; int flags; int cs; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ ist; int dpl; } ;
typedef TYPE_1__ gate_desc ;


 scalar_t__ GATE_INTERRUPT ;
 scalar_t__ GATE_TRAP ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ debug ;
 scalar_t__ double_fault ;
 unsigned long gate_offset (TYPE_1__ const) ;
 int gate_segment (TYPE_1__ const) ;
 scalar_t__ int3 ;
 scalar_t__ machine_check ;
 scalar_t__ nmi ;
 scalar_t__ stack_segment ;
 scalar_t__ xen_debug ;
 scalar_t__ xen_int3 ;
 scalar_t__ xen_stack_segment ;

__attribute__((used)) static int cvt_gate_to_trap(int vector, const gate_desc *val,
       struct trap_info *info)
{
 unsigned long addr;

 if (val->type != GATE_TRAP && val->type != GATE_INTERRUPT)
  return 0;

 info->vector = vector;

 addr = gate_offset(*val);
 info->address = addr;

 info->cs = gate_segment(*val);
 info->flags = val->dpl;

 if (val->type == GATE_INTERRUPT)
  info->flags |= 1 << 2;

 return 1;
}
