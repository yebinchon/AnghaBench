
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_chan_common {int dummy; } ;


 int ETIMEDOUT ;
 int cpu_relax () ;
 int ioat_reset (struct ioat_chan_common*) ;
 scalar_t__ ioat_reset_pending (struct ioat_chan_common*) ;
 unsigned long jiffies ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

int ioat2_reset_sync(struct ioat_chan_common *chan, unsigned long tmo)
{
 unsigned long end = jiffies + tmo;
 int err = 0;

 ioat_reset(chan);
 while (ioat_reset_pending(chan)) {
  if (end && time_after(jiffies, end)) {
   err = -ETIMEDOUT;
   break;
  }
  cpu_relax();
 }

 return err;
}
