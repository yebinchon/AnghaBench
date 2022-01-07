
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void sdhci_writew(struct sdhci_host *host, u16 val, int reg)
{
 writew(val, host->ioaddr + reg);
}
