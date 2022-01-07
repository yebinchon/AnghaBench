
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int ata_ratelimit_lock ;
 scalar_t__ jiffies ;
 scalar_t__ ratelimit_time ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

int ata_ratelimit(void)
{
 int rc;
 unsigned long flags;

 spin_lock_irqsave(&ata_ratelimit_lock, flags);

 if (time_after(jiffies, ratelimit_time)) {
  rc = 1;
  ratelimit_time = jiffies + (HZ/5);
 } else
  rc = 0;

 spin_unlock_irqrestore(&ata_ratelimit_lock, flags);

 return rc;
}
