
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ registers; } ;


 scalar_t__ I830_HIC ;
 TYPE_1__ intel_private ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;
 int wbinvd_on_all_cpus () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void i830_chipset_flush(void)
{
 unsigned long timeout = jiffies + msecs_to_jiffies(1000);




 wbinvd_on_all_cpus();






 writel(readl(intel_private.registers+I830_HIC) | (1<<31),
        intel_private.registers+I830_HIC);

 while (readl(intel_private.registers+I830_HIC) & (1<<31)) {
  if (time_after(jiffies, timeout))
   break;

  udelay(50);
 }
}
