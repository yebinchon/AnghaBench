
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ adb_type; } ;


 scalar_t__ MAC_ADB_CUDA ;
 scalar_t__ MAC_ADB_II ;
 scalar_t__ MAC_ADB_PB1 ;
 scalar_t__ MAC_ADB_PB2 ;
 int cuda_shutdown () ;
 int local_irq_enable () ;
 TYPE_1__* macintosh_config ;
 scalar_t__ oss_present ;
 int oss_shutdown () ;
 int pmu_shutdown () ;
 int printk (char*) ;
 int via_shutdown () ;

void mac_poweroff(void)
{





 if (oss_present) {
  oss_shutdown();
 } else if (macintosh_config->adb_type == MAC_ADB_II) {
  via_shutdown();
 }
 local_irq_enable();
 printk("It is now safe to turn off your Macintosh.\n");
 while(1);
}
