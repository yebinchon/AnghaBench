
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {struct mmc_host* mmc; } ;
struct mmc_host {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct sdhci_host* ERR_PTR (int ) ;
 int WARN_ON (int ) ;
 struct mmc_host* mmc_alloc_host (int,struct device*) ;
 struct sdhci_host* mmc_priv (struct mmc_host*) ;

struct sdhci_host *sdhci_alloc_host(struct device *dev,
 size_t priv_size)
{
 struct mmc_host *mmc;
 struct sdhci_host *host;

 WARN_ON(dev == ((void*)0));

 mmc = mmc_alloc_host(sizeof(struct sdhci_host) + priv_size, dev);
 if (!mmc)
  return ERR_PTR(-ENOMEM);

 host = mmc_priv(mmc);
 host->mmc = mmc;

 return host;
}
