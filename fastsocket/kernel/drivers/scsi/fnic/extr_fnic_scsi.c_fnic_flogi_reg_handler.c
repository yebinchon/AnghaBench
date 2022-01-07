
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vnic_wq_copy {int dummy; } ;
struct TYPE_4__ {scalar_t__ map_dest; int dest_addr; } ;
struct TYPE_3__ {int flags; } ;
struct fnic {scalar_t__* wq_copy_desc_low; int * wq_copy_lock; TYPE_2__ ctlr; struct fc_lport* lport; scalar_t__ data_src_addr; TYPE_1__ config; struct vnic_wq_copy* wq_copy; } ;
struct fc_lport {int host; int e_d_tov; int r_a_tov; } ;
typedef enum fcpio_flogi_reg_format_type { ____Placeholder_fcpio_flogi_reg_format_type } fcpio_flogi_reg_format_type ;


 int EAGAIN ;
 int ETH_ALEN ;
 int FCPIO_FLOGI_REG_DEF_DEST ;
 int FCPIO_FLOGI_REG_GW_DEST ;
 int FNIC_SCSI_DBG (int ,int ,char*,int ,scalar_t__,int *) ;
 int KERN_DEBUG ;
 int SCSI_NO_TAG ;
 int VFCF_FIP_CAPABLE ;
 int fnic_queue_wq_copy_desc_fip_reg (struct vnic_wq_copy*,int ,int ,int *,scalar_t__,int ,int ) ;
 int fnic_queue_wq_copy_desc_flogi_reg (struct vnic_wq_copy*,int ,int,int ,int *) ;
 int free_wq_copy_descs (struct fnic*,struct vnic_wq_copy*) ;
 int memcpy (int *,int ,int) ;
 int memset (int *,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ vnic_wq_copy_desc_avail (struct vnic_wq_copy*) ;

int fnic_flogi_reg_handler(struct fnic *fnic, u32 fc_id)
{
 struct vnic_wq_copy *wq = &fnic->wq_copy[0];
 enum fcpio_flogi_reg_format_type format;
 struct fc_lport *lp = fnic->lport;
 u8 gw_mac[ETH_ALEN];
 int ret = 0;
 unsigned long flags;

 spin_lock_irqsave(&fnic->wq_copy_lock[0], flags);

 if (vnic_wq_copy_desc_avail(wq) <= fnic->wq_copy_desc_low[0])
  free_wq_copy_descs(fnic, wq);

 if (!vnic_wq_copy_desc_avail(wq)) {
  ret = -EAGAIN;
  goto flogi_reg_ioreq_end;
 }

 if (fnic->ctlr.map_dest) {
  memset(gw_mac, 0xff, ETH_ALEN);
  format = FCPIO_FLOGI_REG_DEF_DEST;
 } else {
  memcpy(gw_mac, fnic->ctlr.dest_addr, ETH_ALEN);
  format = FCPIO_FLOGI_REG_GW_DEST;
 }

 if ((fnic->config.flags & VFCF_FIP_CAPABLE) && !fnic->ctlr.map_dest) {
  fnic_queue_wq_copy_desc_fip_reg(wq, SCSI_NO_TAG,
      fc_id, gw_mac,
      fnic->data_src_addr,
      lp->r_a_tov, lp->e_d_tov);
  FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
         "FLOGI FIP reg issued fcid %x src %pM dest %pM\n",
         fc_id, fnic->data_src_addr, gw_mac);
 } else {
  fnic_queue_wq_copy_desc_flogi_reg(wq, SCSI_NO_TAG,
        format, fc_id, gw_mac);
  FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
         "FLOGI reg issued fcid %x map %d dest %pM\n",
         fc_id, fnic->ctlr.map_dest, gw_mac);
 }

flogi_reg_ioreq_end:
 spin_unlock_irqrestore(&fnic->wq_copy_lock[0], flags);
 return ret;
}
