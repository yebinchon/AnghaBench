
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum kgdb_bptype { ____Placeholder_kgdb_bptype } kgdb_bptype ;
struct TYPE_2__ {int type; unsigned long addr; scalar_t__ enabled; scalar_t__ occupied; } ;






 int HW_WATCHPOINT_NUM ;
 int TYPE_DATA_WATCHPOINT ;
 int TYPE_INST_WATCHPOINT ;
 TYPE_1__* breakinfo ;

int bfin_remove_hw_break(unsigned long addr, int len, enum kgdb_bptype type)
{
 int breakno;
 int bfin_type;

 switch (type) {
 case 130:
  bfin_type = TYPE_INST_WATCHPOINT;
  break;
 case 128:
 case 129:
 case 131:
  bfin_type = TYPE_DATA_WATCHPOINT;
  break;
 default:
  return 0;
 }
 for (breakno = 0; breakno < HW_WATCHPOINT_NUM; breakno++)
  if (bfin_type == breakinfo[breakno].type
   && breakinfo[breakno].occupied
   && breakinfo[breakno].addr == addr) {
   breakinfo[breakno].occupied = 0;
   breakinfo[breakno].enabled = 0;
  }

 return 0;
}
