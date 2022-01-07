
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct hw_breakpoint {int dummy; } ;
struct TYPE_3__ {int type; } ;


 int HW_INST_WATCHPOINT_NUM ;
 int HW_WATCHPOINT_NUM ;
 int TYPE_DATA_WATCHPOINT ;
 int TYPE_INST_WATCHPOINT ;
 TYPE_1__* breakinfo ;
 int memset (TYPE_1__*,int ,int) ;

void bfin_remove_all_hw_break(void)
{
 int breakno;

 memset(breakinfo, 0, sizeof(struct hw_breakpoint)*HW_WATCHPOINT_NUM);

 for (breakno = 0; breakno < HW_INST_WATCHPOINT_NUM; breakno++)
  breakinfo[breakno].type = TYPE_INST_WATCHPOINT;
 for (; breakno < HW_WATCHPOINT_NUM; breakno++)
  breakinfo[breakno].type = TYPE_DATA_WATCHPOINT;
}
