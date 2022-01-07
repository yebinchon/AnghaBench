
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmc_spi_host {int spi; } ;


 int spi_setup (int ) ;

__attribute__((used)) static inline int mmc_cs_off(struct mmc_spi_host *host)
{

 return spi_setup(host->spi);
}
