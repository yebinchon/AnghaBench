
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssb_device {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ SSB_CHIPCO_BCAST_ADDR ;
 scalar_t__ SSB_CHIPCO_BCAST_DATA ;
 scalar_t__ SSB_PCICORE_BCAST_ADDR ;
 scalar_t__ SSB_PCICORE_BCAST_DATA ;
 int ssb_read32 (struct ssb_device*,scalar_t__) ;
 int ssb_write32 (struct ssb_device*,scalar_t__,int ) ;

__attribute__((used)) static void ssb_broadcast_value(struct ssb_device *dev,
    u32 address, u32 data)
{






 ssb_write32(dev, SSB_CHIPCO_BCAST_ADDR, address);
 ssb_read32(dev, SSB_CHIPCO_BCAST_ADDR);
 ssb_write32(dev, SSB_CHIPCO_BCAST_DATA, data);
 ssb_read32(dev, SSB_CHIPCO_BCAST_DATA);
}
