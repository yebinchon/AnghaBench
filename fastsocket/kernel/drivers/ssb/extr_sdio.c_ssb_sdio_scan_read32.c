
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ssb_bus {int sdio_sbaddr; int host_sdio; } ;


 int dev_dbg (int ,char*,int,int ,int ,int) ;
 int sdio_claim_host (int ) ;
 int sdio_readl (int ,int ,int*) ;
 int sdio_release_host (int ) ;
 int ssb_sdio_dev (struct ssb_bus*) ;
 scalar_t__ unlikely (int) ;

u32 ssb_sdio_scan_read32(struct ssb_bus *bus, u16 offset)
{
 u32 val;
 int error;

 sdio_claim_host(bus->host_sdio);
 val = sdio_readl(bus->host_sdio, offset, &error);
 sdio_release_host(bus->host_sdio);
 if (unlikely(error)) {
  dev_dbg(ssb_sdio_dev(bus), "%04X:%04X > %08x, error %d\n",
   bus->sdio_sbaddr >> 16, offset, val, error);
 }

 return val;
}
