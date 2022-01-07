
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct comedi_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ counter_2_reg; scalar_t__ counter_1_reg; scalar_t__ counter_0_reg; scalar_t__ ctrl_reg; } ;
struct TYPE_4__ {scalar_t__ timer_regbase; TYPE_1__ cnt_context; } ;


 int CALL_PDEBUG (char*) ;
 scalar_t__ ME4000_CNT_COUNTER_0_REG ;
 scalar_t__ ME4000_CNT_COUNTER_1_REG ;
 scalar_t__ ME4000_CNT_COUNTER_2_REG ;
 scalar_t__ ME4000_CNT_CTRL_REG ;
 TYPE_2__* info ;

__attribute__((used)) static int init_cnt_context(struct comedi_device *dev)
{

 CALL_PDEBUG("In init_cnt_context()\n");

 info->cnt_context.ctrl_reg = info->timer_regbase + ME4000_CNT_CTRL_REG;
 info->cnt_context.counter_0_reg =
     info->timer_regbase + ME4000_CNT_COUNTER_0_REG;
 info->cnt_context.counter_1_reg =
     info->timer_regbase + ME4000_CNT_COUNTER_1_REG;
 info->cnt_context.counter_2_reg =
     info->timer_regbase + ME4000_CNT_COUNTER_2_REG;

 return 0;
}
