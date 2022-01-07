
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int link_event; } ;
struct TYPE_14__ {TYPE_4__ slistat; TYPE_3__* ring; } ;
struct TYPE_10__ {int topology; int status; int type; int number; int fault; int logical_speed; int speed; int duplex; } ;
struct TYPE_11__ {TYPE_1__ link_state; } ;
struct lpfc_hba {int mbox_mem_pool; int pport; TYPE_5__ sli; TYPE_2__ sli4_hba; } ;
struct lpfc_dmabuf {int virt; int phys; } ;
struct lpfc_acqe_fc_la {int dummy; } ;
struct TYPE_15__ {int vport; int mbox_cmpl; } ;
struct TYPE_12__ {int flag; } ;
typedef TYPE_6__ LPFC_MBOXQ_t ;


 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_SLI ;
 int LPFC_ASYNC_LINK_DUPLEX_FULL ;
 size_t LPFC_ELS_RING ;
 int LPFC_FC_LA_EVENT_TYPE_FC_LINK ;
 int LPFC_STOP_IOCB_EVENT ;
 int LPFC_TRAILER_CODE_FC ;
 int MBX_NOT_FINISHED ;
 int MBX_NOWAIT ;
 int bf_get (int ,struct lpfc_acqe_fc_la*) ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 int lpfc_acqe_fc_la_att_type ;
 int lpfc_acqe_fc_la_llink_spd ;
 int lpfc_acqe_fc_la_port_number ;
 int lpfc_acqe_fc_la_port_type ;
 int lpfc_acqe_fc_la_speed ;
 int lpfc_acqe_fc_la_topology ;
 int lpfc_acqe_link_fault ;
 int lpfc_els_flush_all_cmd (struct lpfc_hba*) ;
 int lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_mbx_cmpl_read_topology ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_read_topology (struct lpfc_hba*,TYPE_6__*,struct lpfc_dmabuf*) ;
 int lpfc_sli4_port_speed_parse (struct lpfc_hba*,int ,int) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_6__*,int ) ;
 int lpfc_trailer_type ;
 scalar_t__ mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_6__*,int ) ;

__attribute__((used)) static void
lpfc_sli4_async_fc_evt(struct lpfc_hba *phba, struct lpfc_acqe_fc_la *acqe_fc)
{
 struct lpfc_dmabuf *mp;
 LPFC_MBOXQ_t *pmb;
 int rc;

 if (bf_get(lpfc_trailer_type, acqe_fc) !=
     LPFC_FC_LA_EVENT_TYPE_FC_LINK) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2895 Non FC link Event detected.(%d)\n",
    bf_get(lpfc_trailer_type, acqe_fc));
  return;
 }

 phba->sli4_hba.link_state.speed =
   lpfc_sli4_port_speed_parse(phba, LPFC_TRAILER_CODE_FC,
    bf_get(lpfc_acqe_fc_la_speed, acqe_fc));
 phba->sli4_hba.link_state.duplex = LPFC_ASYNC_LINK_DUPLEX_FULL;
 phba->sli4_hba.link_state.topology =
    bf_get(lpfc_acqe_fc_la_topology, acqe_fc);
 phba->sli4_hba.link_state.status =
    bf_get(lpfc_acqe_fc_la_att_type, acqe_fc);
 phba->sli4_hba.link_state.type =
    bf_get(lpfc_acqe_fc_la_port_type, acqe_fc);
 phba->sli4_hba.link_state.number =
    bf_get(lpfc_acqe_fc_la_port_number, acqe_fc);
 phba->sli4_hba.link_state.fault =
    bf_get(lpfc_acqe_link_fault, acqe_fc);
 phba->sli4_hba.link_state.logical_speed =
    bf_get(lpfc_acqe_fc_la_llink_spd, acqe_fc) * 10;
 lpfc_printf_log(phba, KERN_INFO, LOG_SLI,
   "2896 Async FC event - Speed:%dGBaud Topology:x%x "
   "LA Type:x%x Port Type:%d Port Number:%d Logical speed:"
   "%dMbps Fault:%d\n",
   phba->sli4_hba.link_state.speed,
   phba->sli4_hba.link_state.topology,
   phba->sli4_hba.link_state.status,
   phba->sli4_hba.link_state.type,
   phba->sli4_hba.link_state.number,
   phba->sli4_hba.link_state.logical_speed,
   phba->sli4_hba.link_state.fault);
 pmb = (LPFC_MBOXQ_t *)mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!pmb) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2897 The mboxq allocation failed\n");
  return;
 }
 mp = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (!mp) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2898 The lpfc_dmabuf allocation failed\n");
  goto out_free_pmb;
 }
 mp->virt = lpfc_mbuf_alloc(phba, 0, &mp->phys);
 if (!mp->virt) {
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
    "2899 The mbuf allocation failed\n");
  goto out_free_dmabuf;
 }


 lpfc_els_flush_all_cmd(phba);


 phba->sli.ring[LPFC_ELS_RING].flag |= LPFC_STOP_IOCB_EVENT;


 phba->sli.slistat.link_event++;


 lpfc_read_topology(phba, pmb, mp);
 pmb->mbox_cmpl = lpfc_mbx_cmpl_read_topology;
 pmb->vport = phba->pport;

 rc = lpfc_sli_issue_mbox(phba, pmb, MBX_NOWAIT);
 if (rc == MBX_NOT_FINISHED)
  goto out_free_dmabuf;
 return;

out_free_dmabuf:
 kfree(mp);
out_free_pmb:
 mempool_free(pmb, phba->mbox_mem_pool);
}
