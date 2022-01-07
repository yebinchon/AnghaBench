
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; } ;
struct netup_ci_state {TYPE_1__ ca; } ;
struct cx23885_tsport {scalar_t__ port_priv; } ;


 int dvb_ca_en50221_release (TYPE_1__*) ;
 int kfree (struct netup_ci_state*) ;

void netup_ci_exit(struct cx23885_tsport *port)
{
 struct netup_ci_state *state;

 if (((void*)0) == port)
  return;

 state = (struct netup_ci_state *)port->port_priv;
 if (((void*)0) == state)
  return;

 if (((void*)0) == state->ca.data)
  return;

 dvb_ca_en50221_release(&state->ca);
 kfree(state);
}
