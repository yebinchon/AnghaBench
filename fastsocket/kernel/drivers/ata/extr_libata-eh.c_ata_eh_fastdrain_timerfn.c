
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {int err_mask; } ;
struct TYPE_2__ {int expires; } ;
struct ata_port {int fastdrain_cnt; int lock; TYPE_1__ fastdrain_timer; } ;


 int AC_ERR_TIMEOUT ;
 int ATA_EH_FASTDRAIN_INTERVAL ;
 int ATA_MAX_QUEUE ;
 int add_timer (TYPE_1__*) ;
 int ata_deadline (int ,int ) ;
 int ata_eh_nr_in_flight (struct ata_port*) ;
 int ata_port_freeze (struct ata_port*) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,unsigned int) ;
 int jiffies ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void ata_eh_fastdrain_timerfn(unsigned long arg)
{
 struct ata_port *ap = (void *)arg;
 unsigned long flags;
 int cnt;

 spin_lock_irqsave(ap->lock, flags);

 cnt = ata_eh_nr_in_flight(ap);


 if (!cnt)
  goto out_unlock;

 if (cnt == ap->fastdrain_cnt) {
  unsigned int tag;




  for (tag = 0; tag < ATA_MAX_QUEUE - 1; tag++) {
   struct ata_queued_cmd *qc = ata_qc_from_tag(ap, tag);
   if (qc)
    qc->err_mask |= AC_ERR_TIMEOUT;
  }

  ata_port_freeze(ap);
 } else {

  ap->fastdrain_cnt = cnt;
  ap->fastdrain_timer.expires =
   ata_deadline(jiffies, ATA_EH_FASTDRAIN_INTERVAL);
  add_timer(&ap->fastdrain_timer);
 }

 out_unlock:
 spin_unlock_irqrestore(ap->lock, flags);
}
