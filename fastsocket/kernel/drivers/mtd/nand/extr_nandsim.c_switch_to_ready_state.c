
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int status; scalar_t__ column; scalar_t__ row; scalar_t__ off; scalar_t__ count; scalar_t__ num; } ;
struct nandsim {TYPE_1__ regs; scalar_t__ stateidx; scalar_t__ npstates; int * op; int nxstate; int state; } ;


 int NS_DBG (char*,int ) ;
 int STATE_READY ;
 int STATE_UNKNOWN ;
 int get_state_name (int ) ;

__attribute__((used)) static inline void switch_to_ready_state(struct nandsim *ns, u_char status)
{
 NS_DBG("switch_to_ready_state: switch to %s state\n", get_state_name(STATE_READY));

 ns->state = STATE_READY;
 ns->nxstate = STATE_UNKNOWN;
 ns->op = ((void*)0);
 ns->npstates = 0;
 ns->stateidx = 0;
 ns->regs.num = 0;
 ns->regs.count = 0;
 ns->regs.off = 0;
 ns->regs.row = 0;
 ns->regs.column = 0;
 ns->regs.status = status;
}
