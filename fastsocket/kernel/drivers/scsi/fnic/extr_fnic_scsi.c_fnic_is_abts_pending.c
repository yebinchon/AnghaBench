
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int dummy; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct fnic_io_req {int dummy; } ;
struct fnic {TYPE_1__* lport; } ;
typedef int spinlock_t ;
struct TYPE_2__ {int host; } ;


 scalar_t__ CMD_SP (struct scsi_cmnd*) ;
 scalar_t__ CMD_STATE (struct scsi_cmnd*) ;
 scalar_t__ FNIC_IOREQ_ABTS_PENDING ;
 int FNIC_MAX_IO_REQ ;
 int FNIC_SCSI_DBG (int ,int ,char*,int ) ;
 int KERN_INFO ;
 int * fnic_io_lock_hash (struct fnic*,struct scsi_cmnd*) ;
 int fnic_ioreq_state_to_str (scalar_t__) ;
 struct scsi_cmnd* scsi_host_find_tag (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int fnic_is_abts_pending(struct fnic *fnic, struct scsi_cmnd *lr_sc)
{
 int tag;
 struct fnic_io_req *io_req;
 spinlock_t *io_lock;
 unsigned long flags;
 int ret = 0;
 struct scsi_cmnd *sc;
 struct scsi_device *lun_dev = ((void*)0);

 if (lr_sc)
  lun_dev = lr_sc->device;


 for (tag = 0; tag < FNIC_MAX_IO_REQ; tag++) {
  sc = scsi_host_find_tag(fnic->lport->host, tag);




  if (!sc || (lr_sc && (sc->device != lun_dev || sc == lr_sc)))
   continue;

  io_lock = fnic_io_lock_hash(fnic, sc);
  spin_lock_irqsave(io_lock, flags);

  io_req = (struct fnic_io_req *)CMD_SP(sc);

  if (!io_req || sc->device != lun_dev) {
   spin_unlock_irqrestore(io_lock, flags);
   continue;
  }





  FNIC_SCSI_DBG(KERN_INFO, fnic->lport->host,
         "Found IO in %s on lun\n",
         fnic_ioreq_state_to_str(CMD_STATE(sc)));

  if (CMD_STATE(sc) == FNIC_IOREQ_ABTS_PENDING)
   ret = 1;
  spin_unlock_irqrestore(io_lock, flags);
 }

 return ret;
}
