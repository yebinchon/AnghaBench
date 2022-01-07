
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct imxmci_host {TYPE_2__* mmc; scalar_t__ base; } ;
struct TYPE_3__ {int clock; } ;
struct TYPE_4__ {TYPE_1__ ios; } ;


 scalar_t__ MMC_REG_STATUS ;
 unsigned int STATUS_END_CMD_RESP ;
 int dev_dbg (int ,char*,char const*,unsigned int,unsigned int) ;
 int dev_info (int ,char*,int,char const*,unsigned int,unsigned int) ;
 int mmc_dev (TYPE_2__*) ;
 unsigned int readw (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int imxmci_busy_wait_for_status(struct imxmci_host *host,
           unsigned int *pstat, unsigned int stat_mask,
           int timeout, const char *where)
{
 int loops = 0;

 while (!(*pstat & stat_mask)) {
  loops += 2;
  if (loops >= timeout) {
   dev_dbg(mmc_dev(host->mmc), "busy wait timeout in %s, STATUS = 0x%x (0x%x)\n",
    where, *pstat, stat_mask);
   return -1;
  }
  udelay(2);
  *pstat |= readw(host->base + MMC_REG_STATUS);
 }
 if (!loops)
  return 0;


 if (!(stat_mask & STATUS_END_CMD_RESP) || (host->mmc->ios.clock >= 8000000))
  dev_info(mmc_dev(host->mmc), "busy wait for %d usec in %s, STATUS = 0x%x (0x%x)\n",
    loops, where, *pstat, stat_mask);
 return loops;
}
