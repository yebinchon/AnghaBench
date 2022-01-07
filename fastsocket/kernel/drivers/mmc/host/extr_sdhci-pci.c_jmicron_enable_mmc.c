
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {scalar_t__ ioaddr; } ;


 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void jmicron_enable_mmc(struct sdhci_host *host, int on)
{
 u8 scratch;

 scratch = readb(host->ioaddr + 0xC0);

 if (on)
  scratch |= 0x01;
 else
  scratch &= ~0x01;

 writeb(scratch, host->ioaddr + 0xC0);
}
