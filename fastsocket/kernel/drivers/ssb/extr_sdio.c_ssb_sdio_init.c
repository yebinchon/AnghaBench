
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {scalar_t__ bustype; int sdio_sbaddr; } ;


 scalar_t__ SSB_BUSTYPE_SDIO ;

int ssb_sdio_init(struct ssb_bus *bus)
{
 if (bus->bustype != SSB_BUSTYPE_SDIO)
  return 0;

 bus->sdio_sbaddr = ~0;

 return 0;
}
