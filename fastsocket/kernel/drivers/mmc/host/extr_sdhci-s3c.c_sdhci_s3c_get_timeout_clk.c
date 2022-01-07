
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 int sdhci_s3c_get_max_clk (struct sdhci_host*) ;

__attribute__((used)) static unsigned int sdhci_s3c_get_timeout_clk(struct sdhci_host *host)
{
 return sdhci_s3c_get_max_clk(host) / 1000000;
}
