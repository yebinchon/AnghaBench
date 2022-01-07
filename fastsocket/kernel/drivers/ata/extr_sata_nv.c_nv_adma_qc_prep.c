
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nv_adma_prd {int dummy; } ;
struct nv_adma_port_priv {int flags; struct nv_adma_cpb* cpb; } ;
struct nv_adma_cpb {int ctl_flags; int len; size_t tag; scalar_t__ resp_flags; int * aprd; int tf; scalar_t__ next_cpb_idx; } ;
struct TYPE_3__ {scalar_t__ protocol; } ;
struct ata_queued_cmd {size_t tag; int flags; TYPE_1__ tf; TYPE_2__* ap; } ;
struct TYPE_4__ {struct nv_adma_port_priv* private_data; } ;


 scalar_t__ ATA_PROT_NCQ ;
 int ATA_QCFLAG_DMAMAP ;
 int BUG_ON (int) ;
 int NV_ADMA_ATAPI_SETUP_COMPLETE ;
 int NV_CPB_CTL_APRD_VALID ;
 int NV_CPB_CTL_CPB_VALID ;
 int NV_CPB_CTL_FPDMA ;
 int NV_CPB_CTL_IEN ;
 int NV_CPB_CTL_QUEUE ;
 scalar_t__ NV_CPB_RESP_DONE ;
 int VPRINTK (char*,int) ;
 int ata_sff_qc_prep (struct ata_queued_cmd*) ;
 int memset (int *,int ,int) ;
 int nv_adma_fill_sg (struct ata_queued_cmd*,struct nv_adma_cpb*) ;
 int nv_adma_register_mode (TYPE_2__*) ;
 int nv_adma_tf_to_cpb (TYPE_1__*,int ) ;
 scalar_t__ nv_adma_use_reg_mode (struct ata_queued_cmd*) ;
 int wmb () ;

__attribute__((used)) static void nv_adma_qc_prep(struct ata_queued_cmd *qc)
{
 struct nv_adma_port_priv *pp = qc->ap->private_data;
 struct nv_adma_cpb *cpb = &pp->cpb[qc->tag];
 u8 ctl_flags = NV_CPB_CTL_CPB_VALID |
         NV_CPB_CTL_IEN;

 if (nv_adma_use_reg_mode(qc)) {
  BUG_ON(!(pp->flags & NV_ADMA_ATAPI_SETUP_COMPLETE) &&
   (qc->flags & ATA_QCFLAG_DMAMAP));
  nv_adma_register_mode(qc->ap);
  ata_sff_qc_prep(qc);
  return;
 }

 cpb->resp_flags = NV_CPB_RESP_DONE;
 wmb();
 cpb->ctl_flags = 0;
 wmb();

 cpb->len = 3;
 cpb->tag = qc->tag;
 cpb->next_cpb_idx = 0;


 if (qc->tf.protocol == ATA_PROT_NCQ)
  ctl_flags |= NV_CPB_CTL_QUEUE | NV_CPB_CTL_FPDMA;

 VPRINTK("qc->flags = 0x%lx\n", qc->flags);

 nv_adma_tf_to_cpb(&qc->tf, cpb->tf);

 if (qc->flags & ATA_QCFLAG_DMAMAP) {
  nv_adma_fill_sg(qc, cpb);
  ctl_flags |= NV_CPB_CTL_APRD_VALID;
 } else
  memset(&cpb->aprd[0], 0, sizeof(struct nv_adma_prd) * 5);



 wmb();
 cpb->ctl_flags = ctl_flags;
 wmb();
 cpb->resp_flags = 0;
}
