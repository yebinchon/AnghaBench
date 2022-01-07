
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_bus {scalar_t__ bustype; } ;


 scalar_t__ SSB_BUSTYPE_SDIO ;

void ssb_sdio_exit(struct ssb_bus *bus)
{
 if (bus->bustype != SSB_BUSTYPE_SDIO)
  return;

}
