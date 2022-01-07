
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct fnic {scalar_t__ state; int fnic_lock; int tx_queue; scalar_t__ remove_wait; TYPE_1__* lport; } ;
struct fcpio_tag {int dummy; } ;
struct fcpio_fw_req {int hdr; } ;
struct TYPE_2__ {int host; } ;


 int FNIC_FLAGS_FWRESET ;
 scalar_t__ FNIC_IN_ETH_MODE ;
 scalar_t__ FNIC_IN_FC_MODE ;
 scalar_t__ FNIC_IN_FC_TRANS_ETH_MODE ;
 int FNIC_SCSI_DBG (int ,int ,char*,...) ;
 int KERN_DEBUG ;
 int SCSI_NO_TAG ;
 int complete (scalar_t__) ;
 int fcpio_header_dec (int *,int *,int *,struct fcpio_tag*) ;
 int fnic_cleanup_io (struct fnic*,int ) ;
 int fnic_clear_state_flags (struct fnic*,int ) ;
 int fnic_fcpio_status_to_str (int ) ;
 int fnic_flush_tx (struct fnic*) ;
 int fnic_state_to_str (scalar_t__) ;
 int skb_queue_purge (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fnic_fcpio_fw_reset_cmpl_handler(struct fnic *fnic,
         struct fcpio_fw_req *desc)
{
 u8 type;
 u8 hdr_status;
 struct fcpio_tag tag;
 int ret = 0;
 unsigned long flags;

 fcpio_header_dec(&desc->hdr, &type, &hdr_status, &tag);


 fnic_cleanup_io(fnic, SCSI_NO_TAG);

 spin_lock_irqsave(&fnic->fnic_lock, flags);


 if (fnic->state == FNIC_IN_FC_TRANS_ETH_MODE) {

  if (!hdr_status) {
   FNIC_SCSI_DBG(KERN_DEBUG, fnic->lport->host,
          "reset cmpl success\n");

   fnic->state = FNIC_IN_ETH_MODE;
  } else {
   FNIC_SCSI_DBG(KERN_DEBUG,
          fnic->lport->host,
          "fnic fw_reset : failed %s\n",
          fnic_fcpio_status_to_str(hdr_status));







   fnic->state = FNIC_IN_FC_MODE;
   ret = -1;
  }
 } else {
  FNIC_SCSI_DBG(KERN_DEBUG,
         fnic->lport->host,
         "Unexpected state %s while processing"
         " reset cmpl\n", fnic_state_to_str(fnic->state));
  ret = -1;
 }


 if (fnic->remove_wait)
  complete(fnic->remove_wait);





 if (fnic->remove_wait || ret) {
  spin_unlock_irqrestore(&fnic->fnic_lock, flags);
  skb_queue_purge(&fnic->tx_queue);
  goto reset_cmpl_handler_end;
 }

 spin_unlock_irqrestore(&fnic->fnic_lock, flags);

 fnic_flush_tx(fnic);

 reset_cmpl_handler_end:
 fnic_clear_state_flags(fnic, FNIC_FLAGS_FWRESET);

 return ret;
}
