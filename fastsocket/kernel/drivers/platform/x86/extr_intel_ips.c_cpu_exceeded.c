
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ips_driver {int ctv2_avg_temp; int ctv1_avg_temp; int cpu_avg_power; int core_power_limit; TYPE_2__* dev; int turbo_status_lock; TYPE_1__* limits; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int core_temp_limit; } ;


 int dev_info (int *,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool cpu_exceeded(struct ips_driver *ips, int cpu)
{
 unsigned long flags;
 int avg;
 bool ret = 0;

 spin_lock_irqsave(&ips->turbo_status_lock, flags);
 avg = cpu ? ips->ctv2_avg_temp : ips->ctv1_avg_temp;
 if (avg > (ips->limits->core_temp_limit * 100))
  ret = 1;
 if (ips->cpu_avg_power > ips->core_power_limit * 100)
  ret = 1;
 spin_unlock_irqrestore(&ips->turbo_status_lock, flags);

 if (ret)
  dev_info(&ips->dev->dev,
    "CPU power or thermal limit exceeded\n");

 return ret;
}
