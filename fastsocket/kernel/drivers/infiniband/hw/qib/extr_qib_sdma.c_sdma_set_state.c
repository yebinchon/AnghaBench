
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdma_set_state_action {scalar_t__ go_s99_running_totrue; scalar_t__ go_s99_running_tofalse; scalar_t__ op_drain; scalar_t__ op_halt; scalar_t__ op_intenable; scalar_t__ op_enable; } ;
struct qib_sdma_state {int previous_state; int current_state; unsigned int previous_op; unsigned int current_op; int go_s99_running; struct sdma_set_state_action* set_state_action; } ;
struct qib_pportdata {TYPE_1__* dd; struct qib_sdma_state sdma_state; } ;
typedef enum qib_sdma_states { ____Placeholder_qib_sdma_states } qib_sdma_states ;
struct TYPE_2__ {int (* f_sdma_sendctrl ) (struct qib_pportdata*,unsigned int) ;} ;


 unsigned int QIB_SDMA_SENDCTRL_OP_DRAIN ;
 unsigned int QIB_SDMA_SENDCTRL_OP_ENABLE ;
 unsigned int QIB_SDMA_SENDCTRL_OP_HALT ;
 unsigned int QIB_SDMA_SENDCTRL_OP_INTENABLE ;
 int stub1 (struct qib_pportdata*,unsigned int) ;

__attribute__((used)) static void sdma_set_state(struct qib_pportdata *ppd,
 enum qib_sdma_states next_state)
{
 struct qib_sdma_state *ss = &ppd->sdma_state;
 struct sdma_set_state_action *action = ss->set_state_action;
 unsigned op = 0;


 ss->previous_state = ss->current_state;
 ss->previous_op = ss->current_op;

 ss->current_state = next_state;

 if (action[next_state].op_enable)
  op |= QIB_SDMA_SENDCTRL_OP_ENABLE;

 if (action[next_state].op_intenable)
  op |= QIB_SDMA_SENDCTRL_OP_INTENABLE;

 if (action[next_state].op_halt)
  op |= QIB_SDMA_SENDCTRL_OP_HALT;

 if (action[next_state].op_drain)
  op |= QIB_SDMA_SENDCTRL_OP_DRAIN;

 if (action[next_state].go_s99_running_tofalse)
  ss->go_s99_running = 0;

 if (action[next_state].go_s99_running_totrue)
  ss->go_s99_running = 1;

 ss->current_op = op;

 ppd->dd->f_sdma_sendctrl(ppd, ss->current_op);
}
