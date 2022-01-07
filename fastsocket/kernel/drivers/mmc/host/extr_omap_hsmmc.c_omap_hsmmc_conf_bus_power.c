
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_hsmmc_host {scalar_t__ id; int base; } ;


 int AUTOIDLE ;
 int CAPA ;
 int HCTL ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 scalar_t__ OMAP_MMC1_DEVID ;
 int SDVS18 ;
 int SDVS30 ;
 int SDVS_MASK ;
 int SYSCONFIG ;
 int VS18 ;
 int VS30 ;
 int set_sd_bus_power (struct omap_hsmmc_host*) ;

__attribute__((used)) static void omap_hsmmc_conf_bus_power(struct omap_hsmmc_host *host)
{
 u32 hctl, capa, value;


 if (host->id == OMAP_MMC1_DEVID) {
  hctl = SDVS30;
  capa = VS30 | VS18;
 } else {
  hctl = SDVS18;
  capa = VS18;
 }

 value = OMAP_HSMMC_READ(host->base, HCTL) & ~SDVS_MASK;
 OMAP_HSMMC_WRITE(host->base, HCTL, value | hctl);

 value = OMAP_HSMMC_READ(host->base, CAPA);
 OMAP_HSMMC_WRITE(host->base, CAPA, value | capa);


 value = OMAP_HSMMC_READ(host->base, SYSCONFIG);
 OMAP_HSMMC_WRITE(host->base, SYSCONFIG, value | AUTOIDLE);


 set_sd_bus_power(host);
}
