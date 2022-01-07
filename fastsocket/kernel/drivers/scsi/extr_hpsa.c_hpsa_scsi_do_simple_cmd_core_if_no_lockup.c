
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ctlr_info {int lock; int lockup_detected; } ;
struct CommandList {TYPE_1__* err_info; } ;
struct TYPE_2__ {int CommandStatus; } ;


 int CMD_HARDWARE_ERR ;
 int hpsa_scsi_do_simple_cmd_core (struct ctlr_info*,struct CommandList*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void hpsa_scsi_do_simple_cmd_core_if_no_lockup(struct ctlr_info *h,
 struct CommandList *c)
{
 unsigned long flags;


 spin_lock_irqsave(&h->lock, flags);
 if (unlikely(h->lockup_detected)) {
  spin_unlock_irqrestore(&h->lock, flags);
  c->err_info->CommandStatus = CMD_HARDWARE_ERR;
 } else {
  spin_unlock_irqrestore(&h->lock, flags);
  hpsa_scsi_do_simple_cmd_core(h, c);
 }
}
