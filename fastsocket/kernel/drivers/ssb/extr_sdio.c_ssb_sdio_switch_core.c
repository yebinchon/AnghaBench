
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int coreid; } ;
struct ssb_device {int core_index; TYPE_1__ id; } ;
struct ssb_bus {scalar_t__ sdio_sbaddr; struct ssb_device* mapped_device; } ;


 int SSB_CORE_SIZE ;
 scalar_t__ SSB_ENUM_BASE ;
 int dev_dbg (int ,char*,int,int) ;
 int dev_info (int ,char*,int ,int) ;
 int ssb_core_name (int ) ;
 int ssb_sdio_dev (struct ssb_bus*) ;
 int ssb_sdio_set_sbaddr_window (struct ssb_bus*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

int ssb_sdio_switch_core(struct ssb_bus *bus, struct ssb_device *dev)
{
 u8 coreidx = dev->core_index;
 u32 sbaddr;
 int error = 0;

 sbaddr = (coreidx * SSB_CORE_SIZE) + SSB_ENUM_BASE;
 if (unlikely(bus->sdio_sbaddr != sbaddr)) {





  error = ssb_sdio_set_sbaddr_window(bus, sbaddr);
  if (error) {
   dev_dbg(ssb_sdio_dev(bus), "failed to switch to"
    " core %u, error %d\n", coreidx, error);
   goto out;
  }
  bus->mapped_device = dev;
 }

out:
 return error;
}
