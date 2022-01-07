
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int vendorUnique; int lsRjtRsnCodeExp; int lsRjtRsnCode; int lsRjtRsvd0; } ;
struct TYPE_10__ {int lsRjtError; TYPE_3__ b; } ;
struct ls_rjt {TYPE_4__ un; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct TYPE_7__ {int remoteID; } ;
struct TYPE_8__ {TYPE_1__ elsreq64; } ;
struct TYPE_12__ {TYPE_2__ un; } ;
struct lpfc_iocbq {scalar_t__ context2; TYPE_6__ iocb; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct TYPE_11__ {int Format; } ;
typedef TYPE_5__ RNID ;
typedef TYPE_6__ IOCB_t ;


 int LSEXP_CANT_GIVE_DATA ;
 int LSRJT_UNABLE_TPC ;

 int lpfc_els_rsp_reject (struct lpfc_vport*,int ,struct lpfc_iocbq*,struct lpfc_nodelist*,int *) ;
 int lpfc_els_rsp_rnid_acc (struct lpfc_vport*,int,struct lpfc_iocbq*,struct lpfc_nodelist*) ;

__attribute__((used)) static int
lpfc_els_rcv_rnid(struct lpfc_vport *vport, struct lpfc_iocbq *cmdiocb,
    struct lpfc_nodelist *ndlp)
{
 struct lpfc_dmabuf *pcmd;
 uint32_t *lp;
 IOCB_t *icmd;
 RNID *rn;
 struct ls_rjt stat;
 uint32_t cmd, did;

 icmd = &cmdiocb->iocb;
 did = icmd->un.elsreq64.remoteID;
 pcmd = (struct lpfc_dmabuf *) cmdiocb->context2;
 lp = (uint32_t *) pcmd->virt;

 cmd = *lp++;
 rn = (RNID *) lp;



 switch (rn->Format) {
 case 0:
 case 128:

  lpfc_els_rsp_rnid_acc(vport, rn->Format, cmdiocb, ndlp);
  break;
 default:

  stat.un.b.lsRjtRsvd0 = 0;
  stat.un.b.lsRjtRsnCode = LSRJT_UNABLE_TPC;
  stat.un.b.lsRjtRsnCodeExp = LSEXP_CANT_GIVE_DATA;
  stat.un.b.vendorUnique = 0;
  lpfc_els_rsp_reject(vport, stat.un.lsRjtError, cmdiocb, ndlp,
   ((void*)0));
 }
 return 0;
}
