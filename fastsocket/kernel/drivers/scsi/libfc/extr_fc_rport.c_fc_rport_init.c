
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rport_destroy; scalar_t__ rport_flush_queue; scalar_t__ rport_recv_req; scalar_t__ rport_logoff; scalar_t__ rport_login; scalar_t__ rport_create; scalar_t__ rport_lookup; } ;
struct fc_lport {TYPE_1__ tt; } ;


 scalar_t__ fc_rport_create ;
 scalar_t__ fc_rport_destroy ;
 scalar_t__ fc_rport_flush_queue ;
 scalar_t__ fc_rport_login ;
 scalar_t__ fc_rport_logoff ;
 scalar_t__ fc_rport_lookup ;
 scalar_t__ fc_rport_recv_req ;

int fc_rport_init(struct fc_lport *lport)
{
 if (!lport->tt.rport_lookup)
  lport->tt.rport_lookup = fc_rport_lookup;

 if (!lport->tt.rport_create)
  lport->tt.rport_create = fc_rport_create;

 if (!lport->tt.rport_login)
  lport->tt.rport_login = fc_rport_login;

 if (!lport->tt.rport_logoff)
  lport->tt.rport_logoff = fc_rport_logoff;

 if (!lport->tt.rport_recv_req)
  lport->tt.rport_recv_req = fc_rport_recv_req;

 if (!lport->tt.rport_flush_queue)
  lport->tt.rport_flush_queue = fc_rport_flush_queue;

 if (!lport->tt.rport_destroy)
  lport->tt.rport_destroy = fc_rport_destroy;

 return 0;
}
