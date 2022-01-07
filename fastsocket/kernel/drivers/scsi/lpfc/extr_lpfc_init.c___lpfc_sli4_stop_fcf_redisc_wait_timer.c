
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int redisc_wait; int fcf_flag; } ;
struct lpfc_hba {TYPE_1__ fcf; } ;


 int FCF_REDISC_PEND ;
 int del_timer (int *) ;

void
__lpfc_sli4_stop_fcf_redisc_wait_timer(struct lpfc_hba *phba)
{

 phba->fcf.fcf_flag &= ~FCF_REDISC_PEND;


 del_timer(&phba->fcf.redisc_wait);
}
