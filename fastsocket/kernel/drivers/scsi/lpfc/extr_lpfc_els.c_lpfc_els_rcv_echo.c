
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_iocbq {scalar_t__ context2; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;


 int lpfc_els_rsp_echo_acc (struct lpfc_vport*,int *,struct lpfc_iocbq*,struct lpfc_nodelist*) ;

__attribute__((used)) static int
lpfc_els_rcv_echo(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb,
    struct lpfc_nodelist *ndlp)
{
 uint8_t *pcmd;

 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) cmdiocb->context2)->virt);


 pcmd += sizeof(uint32_t);

 lpfc_els_rsp_echo_acc(vport, pcmd, cmdiocb, ndlp);
 return 0;
}
