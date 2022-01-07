
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 int SDHCI_INT_ALL_MASK ;
 int SDHCI_INT_BUS_POWER ;
 int SDHCI_INT_CRC ;
 int SDHCI_INT_DATA_CRC ;
 int SDHCI_INT_DATA_END ;
 int SDHCI_INT_DATA_END_BIT ;
 int SDHCI_INT_DATA_TIMEOUT ;
 int SDHCI_INT_END_BIT ;
 int SDHCI_INT_INDEX ;
 int SDHCI_INT_RESPONSE ;
 int SDHCI_INT_TIMEOUT ;
 int SDHCI_RESET_ALL ;
 int sdhci_clear_set_irqs (struct sdhci_host*,int ,int) ;
 int sdhci_reset (struct sdhci_host*,int ) ;

__attribute__((used)) static void sdhci_init(struct sdhci_host *host)
{
 sdhci_reset(host, SDHCI_RESET_ALL);

 sdhci_clear_set_irqs(host, SDHCI_INT_ALL_MASK,
  SDHCI_INT_BUS_POWER | SDHCI_INT_DATA_END_BIT |
  SDHCI_INT_DATA_CRC | SDHCI_INT_DATA_TIMEOUT | SDHCI_INT_INDEX |
  SDHCI_INT_END_BIT | SDHCI_INT_CRC | SDHCI_INT_TIMEOUT |
  SDHCI_INT_DATA_END | SDHCI_INT_RESPONSE);
}
