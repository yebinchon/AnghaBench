
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int link_up; scalar_t__ state; } ;


 scalar_t__ LPORT_ST_RESET ;
 int fc_lport_enter_flogi (struct fc_lport*) ;

void __fc_linkup(struct fc_lport *lport)
{
 if (!lport->link_up) {
  lport->link_up = 1;

  if (lport->state == LPORT_ST_RESET)
   fc_lport_enter_flogi(lport);
 }
}
