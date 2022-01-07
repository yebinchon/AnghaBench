
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum kgdb_bptype { ____Placeholder_kgdb_bptype } kgdb_bptype ;
struct TYPE_2__ {int type; int occupied; int enabled; unsigned long addr; int dataacc; scalar_t__ count; scalar_t__ skip; } ;






 int ENOSPC ;
 int HW_INST_WATCHPOINT_NUM ;
 int TYPE_DATA_WATCHPOINT ;
 int TYPE_INST_WATCHPOINT ;
 TYPE_1__* breakinfo ;

int bfin_set_hw_break(unsigned long addr, int len, enum kgdb_bptype type)
{
 int breakno;
 int bfin_type;
 int dataacc = 0;

 switch (type) {
 case 130:
  bfin_type = TYPE_INST_WATCHPOINT;
  break;
 case 128:
  dataacc = 1;
  bfin_type = TYPE_DATA_WATCHPOINT;
  break;
 case 129:
  dataacc = 2;
  bfin_type = TYPE_DATA_WATCHPOINT;
  break;
 case 131:
  dataacc = 3;
  bfin_type = TYPE_DATA_WATCHPOINT;
  break;
 default:
  return -ENOSPC;
 }







 for (breakno = 0; breakno < HW_INST_WATCHPOINT_NUM; breakno++)
  if (bfin_type == breakinfo[breakno].type
   && !breakinfo[breakno].occupied) {
   breakinfo[breakno].occupied = 1;
   breakinfo[breakno].skip = 0;
   breakinfo[breakno].enabled = 1;
   breakinfo[breakno].addr = addr;
   breakinfo[breakno].dataacc = dataacc;
   breakinfo[breakno].count = 0;
   return 0;
  }

 return -ENOSPC;
}
