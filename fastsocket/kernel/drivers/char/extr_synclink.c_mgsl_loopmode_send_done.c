
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct mgsl_struct {int loopmode_send_done_requested; int irq_spinlock; scalar_t__ tx_active; TYPE_1__ params; } ;


 int HDLC_FLAG_HDLC_LOOPMODE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usc_loopmode_send_done (struct mgsl_struct*) ;

__attribute__((used)) static int mgsl_loopmode_send_done( struct mgsl_struct * info )
{
 unsigned long flags;

 spin_lock_irqsave(&info->irq_spinlock,flags);
 if (info->params.flags & HDLC_FLAG_HDLC_LOOPMODE) {
  if (info->tx_active)
   info->loopmode_send_done_requested = 1;
  else
   usc_loopmode_send_done(info);
 }
 spin_unlock_irqrestore(&info->irq_spinlock,flags);

 return 0;
}
