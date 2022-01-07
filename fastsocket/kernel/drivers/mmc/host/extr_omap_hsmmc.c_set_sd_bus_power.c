
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_hsmmc_host {int base; } ;


 int HCTL ;
 int OMAP_HSMMC_READ (int ,int ) ;
 int OMAP_HSMMC_WRITE (int ,int ,int) ;
 int SDBP ;
 int cpu_relax () ;
 unsigned long loops_per_jiffy ;

__attribute__((used)) static void set_sd_bus_power(struct omap_hsmmc_host *host)
{
 unsigned long i;

 OMAP_HSMMC_WRITE(host->base, HCTL,
    OMAP_HSMMC_READ(host->base, HCTL) | SDBP);
 for (i = 0; i < loops_per_jiffy; i++) {
  if (OMAP_HSMMC_READ(host->base, HCTL) & SDBP)
   break;
  cpu_relax();
 }
}
