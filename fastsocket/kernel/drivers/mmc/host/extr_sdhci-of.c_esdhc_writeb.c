
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int ESDHC_HOST_CONTROL_RES ;
 int SDHCI_HOST_CONTROL ;
 int clrsetbits_be32 (scalar_t__,int,int) ;

__attribute__((used)) static void esdhc_writeb(struct sdhci_host *host, u8 val, int reg)
{
 int base = reg & ~0x3;
 int shift = (reg & 0x3) * 8;


 if (reg == SDHCI_HOST_CONTROL)
  val &= ~ESDHC_HOST_CONTROL_RES;

 clrsetbits_be32(host->ioaddr + base , 0xff << shift, val << shift);
}
