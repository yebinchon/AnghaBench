
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {scalar_t__ ioaddr; } ;


 int ESDHC_DMA_SNOOP ;
 scalar_t__ ESDHC_DMA_SYSCTL ;
 int setbits32 (scalar_t__,int ) ;

__attribute__((used)) static int esdhc_enable_dma(struct sdhci_host *host)
{
 setbits32(host->ioaddr + ESDHC_DMA_SYSCTL, ESDHC_DMA_SNOOP);
 return 0;
}
