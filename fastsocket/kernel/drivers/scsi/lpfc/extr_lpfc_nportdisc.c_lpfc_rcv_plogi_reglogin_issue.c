
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_state; } ;
struct lpfc_iocbq {int dummy; } ;


 int lpfc_rcv_plogi (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*) ;

__attribute__((used)) static uint32_t
lpfc_rcv_plogi_reglogin_issue(struct lpfc_vport *vport,
         struct lpfc_nodelist *ndlp,
         void *arg,
         uint32_t evt)
{
 struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *) arg;

 lpfc_rcv_plogi(vport, ndlp, cmdiocb);
 return ndlp->nlp_state;
}
