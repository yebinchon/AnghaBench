
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8 sdhci_readb(struct sdhci_host *host, int reg)
{
 return readb(host->ioaddr + reg);
}
