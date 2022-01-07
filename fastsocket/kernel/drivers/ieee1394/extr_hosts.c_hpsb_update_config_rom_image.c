
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int generation; unsigned long* gen_timestamp; } ;
struct hpsb_host {int delayed_reset; TYPE_1__ csr; int update_config_rom; } ;


 int EINVAL ;
 int HZ ;
 int PREPARE_DELAYED_WORK (int *,int ) ;
 int cancel_delayed_work (int *) ;
 int delayed_reset_bus ;
 unsigned long jiffies ;
 int schedule_delayed_work (int *,unsigned long) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

int hpsb_update_config_rom_image(struct hpsb_host *host)
{
 unsigned long reset_delay;
 int next_gen = host->csr.generation + 1;

 if (!host->update_config_rom)
  return -EINVAL;

 if (next_gen > 0xf)
  next_gen = 2;



 cancel_delayed_work(&host->delayed_reset);



 if (time_before(jiffies, host->csr.gen_timestamp[next_gen] + 60 * HZ))


  reset_delay =
   (60 * HZ) + host->csr.gen_timestamp[next_gen] - jiffies;
 else


  reset_delay = HZ;

 PREPARE_DELAYED_WORK(&host->delayed_reset, delayed_reset_bus);
 schedule_delayed_work(&host->delayed_reset, reset_delay);

 return 0;
}
