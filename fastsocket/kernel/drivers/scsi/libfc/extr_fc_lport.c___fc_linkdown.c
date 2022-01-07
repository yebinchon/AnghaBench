
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* fcp_cleanup ) (struct fc_lport*) ;} ;
struct fc_lport {TYPE_1__ tt; scalar_t__ link_up; } ;


 int fc_lport_enter_reset (struct fc_lport*) ;
 int stub1 (struct fc_lport*) ;

void __fc_linkdown(struct fc_lport *lport)
{
 if (lport->link_up) {
  lport->link_up = 0;
  fc_lport_enter_reset(lport);
  lport->tt.fcp_cleanup(lport);
 }
}
