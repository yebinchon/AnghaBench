
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int SDHCI_HOST_VERSION ;
 int in_be16 (scalar_t__) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static u16 esdhc_readw(struct sdhci_host *host, int reg)
{
 u16 ret;

 if (unlikely(reg == SDHCI_HOST_VERSION))
  ret = in_be16(host->ioaddr + reg);
 else
  ret = in_be16(host->ioaddr + (reg ^ 0x2));
 return ret;
}
