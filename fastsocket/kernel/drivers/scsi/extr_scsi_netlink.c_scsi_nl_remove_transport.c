
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {scalar_t__ refcnt; int flags; int * event_handler; int * msg_handler; } ;


 int HANDLER_DELETING ;
 int HZ ;
 size_t SCSI_NL_MAX_TRANSPORTS ;
 int STATE_EHANDLER_BSY ;
 int msleep (int) ;
 int schedule_timeout_uninterruptible (int) ;
 int scsi_nl_lock ;
 int scsi_nl_state ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* transports ;

void
scsi_nl_remove_transport(u8 tport)
{
 unsigned long flags;

 spin_lock_irqsave(&scsi_nl_lock, flags);
 if (scsi_nl_state & STATE_EHANDLER_BSY) {
  spin_unlock_irqrestore(&scsi_nl_lock, flags);
  msleep(1);
  spin_lock_irqsave(&scsi_nl_lock, flags);
 }

 if (tport < SCSI_NL_MAX_TRANSPORTS) {
  transports[tport].flags |= HANDLER_DELETING;

  while (transports[tport].refcnt != 0) {
   spin_unlock_irqrestore(&scsi_nl_lock, flags);
   schedule_timeout_uninterruptible(HZ/4);
   spin_lock_irqsave(&scsi_nl_lock, flags);
  }
  transports[tport].msg_handler = ((void*)0);
  transports[tport].event_handler = ((void*)0);
  transports[tport].flags = 0;
 }

 spin_unlock_irqrestore(&scsi_nl_lock, flags);

 return;
}
