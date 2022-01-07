
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int device; } ;
struct iscsi_cls_session {scalar_t__ state; int lock; } ;


 int FAST_IO_FAIL ;
 scalar_t__ ISCSI_SESSION_FREE ;
 scalar_t__ ISCSI_SESSION_LOGGED_IN ;
 int msleep (int) ;
 int scsi_target (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct iscsi_cls_session* starget_to_session (int ) ;

int iscsi_block_scsi_eh(struct scsi_cmnd *cmd)
{
 struct iscsi_cls_session *session =
   starget_to_session(scsi_target(cmd->device));
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&session->lock, flags);
 while (session->state != ISCSI_SESSION_LOGGED_IN) {
  if (session->state == ISCSI_SESSION_FREE) {
   ret = FAST_IO_FAIL;
   break;
  }
  spin_unlock_irqrestore(&session->lock, flags);
  msleep(1000);
  spin_lock_irqsave(&session->lock, flags);
 }
 spin_unlock_irqrestore(&session->lock, flags);
 return ret;
}
