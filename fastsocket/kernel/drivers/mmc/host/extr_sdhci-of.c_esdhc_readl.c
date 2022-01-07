
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int in_be32 (scalar_t__) ;

__attribute__((used)) static u32 esdhc_readl(struct sdhci_host *host, int reg)
{
 return in_be32(host->ioaddr + reg);
}
