
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct msmsdcc_host {scalar_t__ base; } ;


 int ETIMEDOUT ;
 scalar_t__ MMCISTATUS ;
 int readl (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int
msmsdcc_spin_on_status(struct msmsdcc_host *host, uint32_t mask, int maxspin)
{
 while (maxspin) {
  if ((readl(host->base + MMCISTATUS) & mask))
   return 0;
  udelay(1);
  --maxspin;
 }
 return -ETIMEDOUT;
}
