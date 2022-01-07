
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ldc_channel {int state; } ;


 int STATE ;
 int ldcdbg (int ,char*,int ,int ) ;
 int state_to_str (int ) ;

__attribute__((used)) static void ldc_set_state(struct ldc_channel *lp, u8 state)
{
 ldcdbg(STATE, "STATE (%s) --> (%s)\n",
        state_to_str(lp->state),
        state_to_str(state));

 lp->state = state;
}
