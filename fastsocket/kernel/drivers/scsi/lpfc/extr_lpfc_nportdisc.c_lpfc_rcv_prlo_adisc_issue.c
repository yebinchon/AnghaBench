
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_state; } ;
struct lpfc_iocbq {int dummy; } ;


 int ELS_CMD_PRLO ;
 int lpfc_rcv_logo (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*,int ) ;

__attribute__((used)) static uint32_t
lpfc_rcv_prlo_adisc_issue(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
     void *arg, uint32_t evt)
{
 struct lpfc_iocbq *cmdiocb;

 cmdiocb = (struct lpfc_iocbq *) arg;


 lpfc_rcv_logo(vport, ndlp, cmdiocb, ELS_CMD_PRLO);
 return ndlp->nlp_state;
}
