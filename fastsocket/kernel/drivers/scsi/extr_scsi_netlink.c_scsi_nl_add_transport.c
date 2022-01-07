
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int (* msg_handler ) (struct sk_buff*) ;void (* event_handler ) (struct notifier_block*,unsigned long,void*) ;scalar_t__ refcnt; int flags; } ;


 int EALREADY ;
 int EINVAL ;
 size_t SCSI_NL_MAX_TRANSPORTS ;
 int STATE_EHANDLER_BSY ;
 int msleep (int) ;
 int scsi_nl_lock ;
 int scsi_nl_state ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_1__* transports ;

int
scsi_nl_add_transport(u8 tport,
 int (*msg_handler)(struct sk_buff *),
 void (*event_handler)(struct notifier_block *, unsigned long, void *))
{
 unsigned long flags;
 int err = 0;

 if (tport >= SCSI_NL_MAX_TRANSPORTS)
  return -EINVAL;

 spin_lock_irqsave(&scsi_nl_lock, flags);

 if (scsi_nl_state & STATE_EHANDLER_BSY) {
  spin_unlock_irqrestore(&scsi_nl_lock, flags);
  msleep(1);
  spin_lock_irqsave(&scsi_nl_lock, flags);
 }

 if (transports[tport].msg_handler || transports[tport].event_handler) {
  err = -EALREADY;
  goto register_out;
 }

 transports[tport].msg_handler = msg_handler;
 transports[tport].event_handler = event_handler;
 transports[tport].flags = 0;
 transports[tport].refcnt = 0;

register_out:
 spin_unlock_irqrestore(&scsi_nl_lock, flags);

 return err;
}
