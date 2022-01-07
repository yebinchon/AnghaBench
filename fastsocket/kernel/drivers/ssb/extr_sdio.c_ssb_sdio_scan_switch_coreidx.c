
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ssb_bus {int host_sdio; } ;


 int SSB_CORE_SIZE ;
 scalar_t__ SSB_ENUM_BASE ;
 int dev_err (int ,char*,int,int) ;
 int sdio_claim_host (int ) ;
 int sdio_release_host (int ) ;
 int ssb_sdio_dev (struct ssb_bus*) ;
 int ssb_sdio_set_sbaddr_window (struct ssb_bus*,scalar_t__) ;

int ssb_sdio_scan_switch_coreidx(struct ssb_bus *bus, u8 coreidx)
{
 u32 sbaddr;
 int error;

 sbaddr = (coreidx * SSB_CORE_SIZE) + SSB_ENUM_BASE;
 sdio_claim_host(bus->host_sdio);
 error = ssb_sdio_set_sbaddr_window(bus, sbaddr);
 sdio_release_host(bus->host_sdio);
 if (error) {
  dev_err(ssb_sdio_dev(bus), "failed to switch to core %u,"
   " error %d\n", coreidx, error);
  goto out;
 }
out:
 return error;
}
