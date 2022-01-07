
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int commands_pending; int dev; } ;
struct bc_state {int dummy; } ;
struct at_state_t {int pending_commands; } ;





 int PC_HUP ;
 int dev_err (int ,char*,int) ;
 int gigaset_isdn_icall (struct at_state_t*) ;

__attribute__((used)) static void handle_icall(struct cardstate *cs, struct bc_state *bcs,
    struct at_state_t **p_at_state)
{
 int retval;
 struct at_state_t *at_state = *p_at_state;

 retval = gigaset_isdn_icall(at_state);
 switch (retval) {
 case 130:
  break;
 default:
  dev_err(cs->dev, "internal error: disposition=%d\n", retval);

 case 129:
 case 128:




  at_state->pending_commands |= PC_HUP;
  cs->commands_pending = 1;
  break;
 }
}
