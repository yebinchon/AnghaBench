
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {int dummy; } ;


 int sdhci_clear_set_irqs (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_mask_irqs(struct sdhci_host *host, u32 irqs)
{
 sdhci_clear_set_irqs(host, irqs, 0);
}
