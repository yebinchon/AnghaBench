
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int SDHCI_INT_ENABLE ;
 int SDHCI_SIGNAL_ENABLE ;
 int sdhci_readl (struct sdhci_host*,int ) ;
 int sdhci_writel (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_clear_set_irqs(struct sdhci_host *host, u32 clear, u32 set)
{
 u32 ier;

 ier = sdhci_readl(host, SDHCI_INT_ENABLE);
 ier &= ~clear;
 ier |= set;
 sdhci_writel(host, ier, SDHCI_INT_ENABLE);
 sdhci_writel(host, ier, SDHCI_SIGNAL_ENABLE);
}
