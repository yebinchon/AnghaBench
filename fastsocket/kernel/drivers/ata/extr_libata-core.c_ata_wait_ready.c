
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_link {TYPE_1__* ap; } ;
struct TYPE_2__ {int flags; struct ata_link* slave_link; } ;


 int ATA_FLAG_SATA ;
 int ATA_TMOUT_FF_WAIT ;
 int EBUSY ;
 int ENODEV ;
 int HZ ;
 int KERN_WARNING ;
 int WARN_ON (int) ;
 unsigned long ata_deadline (unsigned long,int ) ;
 int ata_link_offline (struct ata_link*) ;
 scalar_t__ ata_link_online (struct ata_link*) ;
 int ata_link_printk (struct ata_link*,int ,char*,int) ;
 int ata_msleep (TYPE_1__*,int) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int ata_wait_ready(struct ata_link *link, unsigned long deadline,
     int (*check_ready)(struct ata_link *link))
{
 unsigned long start = jiffies;
 unsigned long nodev_deadline = ata_deadline(start, ATA_TMOUT_FF_WAIT);
 int warned = 0;





 WARN_ON(link == link->ap->slave_link);

 if (time_after(nodev_deadline, deadline))
  nodev_deadline = deadline;

 while (1) {
  unsigned long now = jiffies;
  int ready, tmp;

  ready = tmp = check_ready(link);
  if (ready > 0)
   return 0;
  if (ready == -ENODEV) {
   if (ata_link_online(link))
    ready = 0;
   else if ((link->ap->flags & ATA_FLAG_SATA) &&
     !ata_link_offline(link) &&
     time_before(now, nodev_deadline))
    ready = 0;
  }

  if (ready)
   return ready;
  if (time_after(now, deadline))
   return -EBUSY;

  if (!warned && time_after(now, start + 5 * HZ) &&
      (deadline - now > 3 * HZ)) {
   ata_link_printk(link, KERN_WARNING,
    "link is slow to respond, please be patient "
    "(ready=%d)\n", tmp);
   warned = 1;
  }

  ata_msleep(link->ap, 50);
 }
}
