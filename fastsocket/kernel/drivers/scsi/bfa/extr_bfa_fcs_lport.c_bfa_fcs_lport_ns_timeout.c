
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_lport_ns_s {TYPE_2__* port; } ;
struct TYPE_3__ {int ns_timeouts; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int NSSM_EVENT_TIMEOUT ;
 int bfa_sm_send_event (struct bfa_fcs_lport_ns_s*,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_ns_timeout(void *arg)
{
 struct bfa_fcs_lport_ns_s *ns = (struct bfa_fcs_lport_ns_s *) arg;

 ns->port->stats.ns_timeouts++;
 bfa_sm_send_event(ns, NSSM_EVENT_TIMEOUT);
}
