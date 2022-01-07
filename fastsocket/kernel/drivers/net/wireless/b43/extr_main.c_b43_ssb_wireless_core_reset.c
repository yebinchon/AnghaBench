
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ssb_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct b43_wldev {TYPE_1__ phy; TYPE_2__* dev; } ;
struct TYPE_4__ {struct ssb_device* sdev; } ;


 scalar_t__ B43_PHYTYPE_N ;
 int B43_TMSLOW_GMODE ;
 int B43_TMSLOW_PHYCLKEN ;
 int B43_TMSLOW_PHYRESET ;
 int B43_TMSLOW_PHY_BANDWIDTH_20MHZ ;
 int SSB_TMSLOW ;
 int SSB_TMSLOW_FGC ;
 int b43_device_enable (struct b43_wldev*,int ) ;
 int msleep (int) ;
 int ssb_read32 (struct ssb_device*,int ) ;
 int ssb_write32 (struct ssb_device*,int ,int ) ;

__attribute__((used)) static void b43_ssb_wireless_core_reset(struct b43_wldev *dev, bool gmode)
{
 struct ssb_device *sdev = dev->dev->sdev;
 u32 tmslow;
 u32 flags = 0;

 if (gmode)
  flags |= B43_TMSLOW_GMODE;
 flags |= B43_TMSLOW_PHYCLKEN;
 flags |= B43_TMSLOW_PHYRESET;
 if (dev->phy.type == B43_PHYTYPE_N)
  flags |= B43_TMSLOW_PHY_BANDWIDTH_20MHZ;
 b43_device_enable(dev, flags);
 msleep(2);


 tmslow = ssb_read32(sdev, SSB_TMSLOW);
 tmslow |= SSB_TMSLOW_FGC;
 tmslow &= ~B43_TMSLOW_PHYRESET;
 ssb_write32(sdev, SSB_TMSLOW, tmslow);
 ssb_read32(sdev, SSB_TMSLOW);
 msleep(1);
 tmslow &= ~SSB_TMSLOW_FGC;
 ssb_write32(sdev, SSB_TMSLOW, tmslow);
 ssb_read32(sdev, SSB_TMSLOW);
 msleep(1);
}
