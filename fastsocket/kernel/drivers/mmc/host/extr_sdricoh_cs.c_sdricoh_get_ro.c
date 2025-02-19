
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdricoh_host {int dummy; } ;
struct mmc_host {int dummy; } ;


 int R21C_STATUS ;
 int R2E4_STATUS_RESP ;
 unsigned int STATUS_CARD_LOCKED ;
 struct sdricoh_host* mmc_priv (struct mmc_host*) ;
 unsigned int sdricoh_readl (struct sdricoh_host*,int ) ;
 int sdricoh_writel (struct sdricoh_host*,int ,unsigned int) ;
 scalar_t__ switchlocked ;

__attribute__((used)) static int sdricoh_get_ro(struct mmc_host *mmc)
{
 struct sdricoh_host *host = mmc_priv(mmc);
 unsigned int status;

 status = sdricoh_readl(host, R21C_STATUS);
 sdricoh_writel(host, R2E4_STATUS_RESP, status);


 if (switchlocked)
  return !(status & STATUS_CARD_LOCKED);

 return (status & STATUS_CARD_LOCKED);
}
