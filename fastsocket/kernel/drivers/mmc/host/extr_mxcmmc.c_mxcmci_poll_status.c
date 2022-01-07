
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxcmci_host {int clock; scalar_t__ base; } ;


 unsigned long HZ ;
 scalar_t__ MMC_REG_STATUS ;
 int STATUS_ERR_MASK ;
 int STATUS_TIME_OUT_READ ;
 int cpu_relax () ;
 unsigned long jiffies ;
 int mxcmci_set_clk_rate (struct mxcmci_host*,int ) ;
 int mxcmci_softreset (struct mxcmci_host*) ;
 int readl (scalar_t__) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int mxcmci_poll_status(struct mxcmci_host *host, u32 mask)
{
 u32 stat;
 unsigned long timeout = jiffies + HZ;

 do {
  stat = readl(host->base + MMC_REG_STATUS);
  if (stat & STATUS_ERR_MASK)
   return stat;
  if (time_after(jiffies, timeout)) {
   mxcmci_softreset(host);
   mxcmci_set_clk_rate(host, host->clock);
   return STATUS_TIME_OUT_READ;
  }
  if (stat & mask)
   return 0;
  cpu_relax();
 } while (1);
}
