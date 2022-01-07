
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ips_driver {int mch_avg_temp; scalar_t__ mch_avg_power; scalar_t__ mch_power_limit; int turbo_status_lock; TYPE_1__* limits; } ;
struct TYPE_2__ {int mch_temp_limit; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool mch_exceeded(struct ips_driver *ips)
{
 unsigned long flags;
 bool ret = 0;

 spin_lock_irqsave(&ips->turbo_status_lock, flags);
 if (ips->mch_avg_temp > (ips->limits->mch_temp_limit * 100))
  ret = 1;
 if (ips->mch_avg_power > ips->mch_power_limit)
  ret = 1;
 spin_unlock_irqrestore(&ips->turbo_status_lock, flags);

 return ret;
}
