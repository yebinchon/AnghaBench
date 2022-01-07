
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int quirks; int pwr; } ;


 int BUG () ;





 int SDHCI_POWER_180 ;
 int SDHCI_POWER_300 ;
 int SDHCI_POWER_330 ;
 int SDHCI_POWER_CONTROL ;
 int SDHCI_POWER_ON ;
 int SDHCI_QUIRK_DELAY_AFTER_POWER ;
 int SDHCI_QUIRK_NO_SIMULT_VDD_AND_POWER ;
 int SDHCI_QUIRK_SINGLE_POWER_WRITE ;
 int mdelay (int) ;
 int sdhci_writeb (struct sdhci_host*,int ,int ) ;

__attribute__((used)) static void sdhci_set_power(struct sdhci_host *host, unsigned short power)
{
 u8 pwr;

 if (power == (unsigned short)-1)
  pwr = 0;
 else {
  switch (1 << power) {
  case 132:
   pwr = SDHCI_POWER_180;
   break;
  case 131:
  case 130:
   pwr = SDHCI_POWER_300;
   break;
  case 129:
  case 128:
   pwr = SDHCI_POWER_330;
   break;
  default:
   BUG();
  }
 }

 if (host->pwr == pwr)
  return;

 host->pwr = pwr;

 if (pwr == 0) {
  sdhci_writeb(host, 0, SDHCI_POWER_CONTROL);
  return;
 }





 if (!(host->quirks & SDHCI_QUIRK_SINGLE_POWER_WRITE))
  sdhci_writeb(host, 0, SDHCI_POWER_CONTROL);





 if (host->quirks & SDHCI_QUIRK_NO_SIMULT_VDD_AND_POWER)
  sdhci_writeb(host, pwr, SDHCI_POWER_CONTROL);

 pwr |= SDHCI_POWER_ON;

 sdhci_writeb(host, pwr, SDHCI_POWER_CONTROL);





 if (host->quirks & SDHCI_QUIRK_DELAY_AFTER_POWER)
  mdelay(10);
}
