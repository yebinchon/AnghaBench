
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ intr_enable; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; TYPE_1__* pport; } ;
struct TYPE_3__ {scalar_t__ work_port_events; } ;


 int lpfc_stop_hba_timers (struct lpfc_hba*) ;

__attribute__((used)) static void
lpfc_stop_port_s4(struct lpfc_hba *phba)
{

 lpfc_stop_hba_timers(phba);
 phba->pport->work_port_events = 0;
 phba->sli4_hba.intr_enable = 0;
}
