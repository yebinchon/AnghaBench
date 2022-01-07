
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int host_lock; } ;
struct TYPE_12__ {int result; int (* scsi_done ) (TYPE_5__*) ;} ;
struct TYPE_11__ {scalar_t__* state; int* free_queue; TYPE_6__* host; int chrdev_request_id; int flags; scalar_t__ posted_request_count; void* free_tail; void* free_head; TYPE_5__** srb; } ;
typedef TYPE_1__ TW_Device_Extension ;


 int DID_RESET ;
 int TWL_CLEAR_DB_INTERRUPT (TYPE_1__*) ;
 int TWL_MASK_INTERRUPTS (TYPE_1__*) ;
 int TWL_UNMASK_INTERRUPTS (TYPE_1__*) ;
 int TW_IN_RESET ;
 int TW_IOCTL_CHRDEV_FREE ;
 int TW_Q_LENGTH ;
 void* TW_Q_START ;
 scalar_t__ TW_S_COMPLETED ;
 scalar_t__ TW_S_FINISHED ;
 scalar_t__ TW_S_INITIAL ;
 int clear_bit (int ,int *) ;
 int scsi_block_requests (TYPE_6__*) ;
 int scsi_unblock_requests (TYPE_6__*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (TYPE_5__*) ;
 scalar_t__ twl_reset_sequence (TYPE_1__*,int) ;
 int twl_unmap_scsi_data (TYPE_1__*,int) ;

__attribute__((used)) static int twl_reset_device_extension(TW_Device_Extension *tw_dev, int ioctl_reset)
{
 int i = 0, retval = 1;
 unsigned long flags = 0;


 if (ioctl_reset)
  scsi_block_requests(tw_dev->host);

 set_bit(TW_IN_RESET, &tw_dev->flags);
 TWL_MASK_INTERRUPTS(tw_dev);
 TWL_CLEAR_DB_INTERRUPT(tw_dev);

 spin_lock_irqsave(tw_dev->host->host_lock, flags);


 for (i = 0; i < TW_Q_LENGTH; i++) {
  if ((tw_dev->state[i] != TW_S_FINISHED) &&
      (tw_dev->state[i] != TW_S_INITIAL) &&
      (tw_dev->state[i] != TW_S_COMPLETED)) {
   if (tw_dev->srb[i]) {
    tw_dev->srb[i]->result = (DID_RESET << 16);
    tw_dev->srb[i]->scsi_done(tw_dev->srb[i]);
    twl_unmap_scsi_data(tw_dev, i);
   }
  }
 }


 for (i = 0; i < TW_Q_LENGTH; i++) {
  tw_dev->free_queue[i] = i;
  tw_dev->state[i] = TW_S_INITIAL;
 }
 tw_dev->free_head = TW_Q_START;
 tw_dev->free_tail = TW_Q_START;
 tw_dev->posted_request_count = 0;

 spin_unlock_irqrestore(tw_dev->host->host_lock, flags);

 if (twl_reset_sequence(tw_dev, 1))
  goto out;

 TWL_UNMASK_INTERRUPTS(tw_dev);

 clear_bit(TW_IN_RESET, &tw_dev->flags);
 tw_dev->chrdev_request_id = TW_IOCTL_CHRDEV_FREE;

 retval = 0;
out:
 if (ioctl_reset)
  scsi_unblock_requests(tw_dev->host);
 return retval;
}
