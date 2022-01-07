
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcs_lport_n2n_s {scalar_t__ reply_oxid; scalar_t__ rem_port_wwn; } ;
struct TYPE_2__ {struct bfa_fcs_lport_n2n_s pn2n; } ;
struct bfa_fcs_lport_s {scalar_t__ pid; int fcs; TYPE_1__ port_topo; } ;


 int bfa_trc (int ,scalar_t__) ;

__attribute__((used)) static void
bfa_fcs_lport_n2n_offline(struct bfa_fcs_lport_s *port)
{
 struct bfa_fcs_lport_n2n_s *n2n_port = &port->port_topo.pn2n;

 bfa_trc(port->fcs, port->pid);
 port->pid = 0;
 n2n_port->rem_port_wwn = 0;
 n2n_port->reply_oxid = 0;
}
