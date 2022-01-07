
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ intr_enable; } ;
struct lpfc_hba {TYPE_2__ sli4_hba; int link_state; TYPE_1__* pport; } ;
struct TYPE_3__ {int port_state; } ;


 int LPFC_HBA_ERROR ;
 int LPFC_VPORT_UNKNOWN ;
 scalar_t__ lpfc_sli4_post_status_check (struct lpfc_hba*) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;

__attribute__((used)) static int
lpfc_sli_brdready_s4(struct lpfc_hba *phba, uint32_t mask)
{
 uint32_t status;
 int retval = 0;


 status = lpfc_sli4_post_status_check(phba);

 if (status) {
  phba->pport->port_state = LPFC_VPORT_UNKNOWN;
  lpfc_sli_brdrestart(phba);
  status = lpfc_sli4_post_status_check(phba);
 }


 if (status) {
  phba->link_state = LPFC_HBA_ERROR;
  retval = 1;
 } else
  phba->sli4_hba.intr_enable = 0;

 return retval;
}
