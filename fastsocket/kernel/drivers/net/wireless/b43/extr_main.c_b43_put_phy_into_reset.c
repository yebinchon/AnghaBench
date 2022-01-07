
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct b43_wldev {TYPE_1__* dev; int wl; } ;
struct TYPE_2__ {int bus_type; int sdev; } ;




 int B43_TMSLOW_GMODE ;
 int B43_TMSLOW_PHYRESET ;
 int SSB_TMSLOW ;
 int SSB_TMSLOW_FGC ;
 int b43err (int ,char*) ;
 int msleep (int) ;
 int ssb_read32 (int ,int ) ;
 int ssb_write32 (int ,int ,int ) ;

__attribute__((used)) static void b43_put_phy_into_reset(struct b43_wldev *dev)
{
 u32 tmp;

 switch (dev->dev->bus_type) {
 }
}
