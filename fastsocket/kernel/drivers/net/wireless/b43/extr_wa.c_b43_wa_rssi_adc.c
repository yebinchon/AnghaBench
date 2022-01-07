
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int analog; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int b43_phy_write (struct b43_wldev*,int,int) ;

__attribute__((used)) static void b43_wa_rssi_adc(struct b43_wldev *dev)
{
 if (dev->phy.analog == 4)
  b43_phy_write(dev, 0x00DC, 0x7454);
}
