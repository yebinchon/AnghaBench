
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int out_be32 (scalar_t__,int ) ;

__attribute__((used)) static void esdhc_writel(struct sdhci_host *host, u32 val, int reg)
{
 out_be32(host->ioaddr + reg, val);
}
