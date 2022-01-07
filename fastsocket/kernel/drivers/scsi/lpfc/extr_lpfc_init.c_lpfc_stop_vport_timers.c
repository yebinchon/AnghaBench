
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int delayed_disc_tmo; int fc_fdmitmo; int els_tmofunc; } ;


 int del_timer_sync (int *) ;
 int lpfc_can_disctmo (struct lpfc_vport*) ;

void
lpfc_stop_vport_timers(struct lpfc_vport *vport)
{
 del_timer_sync(&vport->els_tmofunc);
 del_timer_sync(&vport->fc_fdmitmo);
 del_timer_sync(&vport->delayed_disc_tmo);
 lpfc_can_disctmo(vport);
 return;
}
