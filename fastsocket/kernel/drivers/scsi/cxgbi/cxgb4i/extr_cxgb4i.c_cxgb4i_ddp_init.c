
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int rsvd_mask; int rsvd_shift; int rsvd_bits; int sw_bits; } ;
struct cxgbi_device {int rx_max_size; int tx_max_size; TYPE_3__ tag_format; int csk_ddp_clear; int csk_ddp_set; int csk_ddp_setup_pgidx; int csk_ddp_setup_digest; struct cxgbi_ddp_info* ddp; } ;
struct cxgbi_ddp_info {unsigned int idx_mask; int max_rxsz; int max_txsz; int rsvd_tag_mask; int idx_bits; int nppods; int refcnt; } ;
struct cxgb4_lld_info {int iscsi_iolen; int * ports; TYPE_2__* vr; } ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ start; } ;
struct TYPE_5__ {TYPE_1__ iscsi; } ;


 int EALREADY ;
 unsigned int PPOD_IDX_SHIFT ;
 int cxgb4_iscsi_init (int ,unsigned int,unsigned int*) ;
 struct cxgb4_lld_info* cxgbi_cdev_priv (struct cxgbi_device*) ;
 int cxgbi_ddp_init (struct cxgbi_device*,scalar_t__,scalar_t__,int ,int ) ;
 int cxgbi_ddp_page_size_factor (unsigned int*) ;
 int ddp_clear_map ;
 int ddp_set_map ;
 int ddp_setup_conn_digest ;
 int ddp_setup_conn_pgidx ;
 int kref_get (int *) ;
 int pr_info (char*,struct cxgbi_device*,int ,int ,unsigned int,int ,...) ;
 int pr_warn (char*,struct cxgbi_device*,struct cxgbi_ddp_info*) ;

__attribute__((used)) static int cxgb4i_ddp_init(struct cxgbi_device *cdev)
{
 struct cxgb4_lld_info *lldi = cxgbi_cdev_priv(cdev);
 struct cxgbi_ddp_info *ddp = cdev->ddp;
 unsigned int tagmask, pgsz_factor[4];
 int err;

 if (ddp) {
  kref_get(&ddp->refcnt);
  pr_warn("cdev 0x%p, ddp 0x%p already set up.\n",
   cdev, cdev->ddp);
  return -EALREADY;
 }

 err = cxgbi_ddp_init(cdev, lldi->vr->iscsi.start,
   lldi->vr->iscsi.start + lldi->vr->iscsi.size - 1,
   lldi->iscsi_iolen, lldi->iscsi_iolen);
 if (err < 0)
  return err;

 ddp = cdev->ddp;

 tagmask = ddp->idx_mask << PPOD_IDX_SHIFT;
 cxgbi_ddp_page_size_factor(pgsz_factor);
 cxgb4_iscsi_init(lldi->ports[0], tagmask, pgsz_factor);

 cdev->csk_ddp_setup_digest = ddp_setup_conn_digest;
 cdev->csk_ddp_setup_pgidx = ddp_setup_conn_pgidx;
 cdev->csk_ddp_set = ddp_set_map;
 cdev->csk_ddp_clear = ddp_clear_map;

 pr_info("cxgb4i 0x%p tag: sw %u, rsvd %u,%u, mask 0x%x.\n",
  cdev, cdev->tag_format.sw_bits, cdev->tag_format.rsvd_bits,
  cdev->tag_format.rsvd_shift, cdev->tag_format.rsvd_mask);
 pr_info("cxgb4i 0x%p, nppods %u, bits %u, mask 0x%x,0x%x pkt %u/%u, "
  " %u/%u.\n",
  cdev, ddp->nppods, ddp->idx_bits, ddp->idx_mask,
  ddp->rsvd_tag_mask, ddp->max_txsz, lldi->iscsi_iolen,
  ddp->max_rxsz, lldi->iscsi_iolen);
 pr_info("cxgb4i 0x%p max payload size: %u/%u, %u/%u.\n",
  cdev, cdev->tx_max_size, ddp->max_txsz, cdev->rx_max_size,
  ddp->max_rxsz);
 return 0;
}
