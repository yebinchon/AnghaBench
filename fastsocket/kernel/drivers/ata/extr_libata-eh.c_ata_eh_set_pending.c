
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expires; } ;
struct ata_port {int pflags; int fastdrain_cnt; TYPE_1__ fastdrain_timer; } ;


 int ATA_EH_FASTDRAIN_INTERVAL ;
 int ATA_PFLAG_EH_PENDING ;
 int add_timer (TYPE_1__*) ;
 int ata_deadline (int ,int ) ;
 int ata_eh_nr_in_flight (struct ata_port*) ;
 int jiffies ;

__attribute__((used)) static void ata_eh_set_pending(struct ata_port *ap, int fastdrain)
{
 int cnt;


 if (ap->pflags & ATA_PFLAG_EH_PENDING)
  return;

 ap->pflags |= ATA_PFLAG_EH_PENDING;

 if (!fastdrain)
  return;


 cnt = ata_eh_nr_in_flight(ap);
 if (!cnt)
  return;


 ap->fastdrain_cnt = cnt;
 ap->fastdrain_timer.expires =
  ata_deadline(jiffies, ATA_EH_FASTDRAIN_INTERVAL);
 add_timer(&ap->fastdrain_timer);
}
