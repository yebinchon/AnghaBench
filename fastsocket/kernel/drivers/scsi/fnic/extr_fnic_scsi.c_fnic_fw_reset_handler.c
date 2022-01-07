
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_wq_copy {int dummy; } ;
struct fnic {scalar_t__* wq_copy_desc_low; TYPE_1__* lport; int * wq_copy_lock; int in_flight; int tx_queue; int frame_queue; struct vnic_wq_copy* wq_copy; } ;
struct TYPE_2__ {int host; } ;


 int EAGAIN ;
 int FNIC_FLAGS_FWRESET ;
 int FNIC_SCSI_DBG (int ,int ,char*) ;
 int KERN_DEBUG ;
 int SCSI_NO_TAG ;
 scalar_t__ atomic_read (int *) ;
 int fnic_clear_state_flags (struct fnic*,int ) ;
 int fnic_queue_wq_copy_desc_fw_reset (struct vnic_wq_copy*,int ) ;
 int fnic_set_state_flags (struct fnic*,int ) ;
 int free_wq_copy_descs (struct fnic*,struct vnic_wq_copy*) ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout (int ) ;
 int skb_queue_purge (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ vnic_wq_copy_desc_avail (struct vnic_wq_copy*) ;

int fnic_fw_reset_handler(struct fnic *fnic)
{
 struct vnic_wq_copy *wq = &fnic->wq_copy[0];
 int ret = 0;
 unsigned long flags;


 fnic_set_state_flags(fnic, FNIC_FLAGS_FWRESET);

 skb_queue_purge(&fnic->frame_queue);
 skb_queue_purge(&fnic->tx_queue);


 while (atomic_read(&fnic->in_flight))
  schedule_timeout(msecs_to_jiffies(1));

 spin_lock_irqsave(&fnic->wq_copy_lock[0], flags);

 if (vnic_wq_copy_desc_avail(wq) <= fnic->wq_copy_desc_low[0])
  free_wq_copy_descs(fnic, wq);

 if (!vnic_wq_copy_desc_avail(wq))
  ret = -EAGAIN;
 else
  fnic_queue_wq_copy_desc_fw_reset(wq, SCSI_NO_TAG);

 spin_unlock_irqrestore(&fnic->wq_copy_lock[0], flags);

 if (!ret)
  FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
         "Issued fw reset\n");
 else {
  fnic_clear_state_flags(fnic, FNIC_FLAGS_FWRESET);
  FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
         "Failed to issue fw reset\n");
 }

 return ret;
}
