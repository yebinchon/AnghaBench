
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ is_40mhz; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int B43_NTAB16 (int,int) ;
 int b43_ntab_read (struct b43_wldev*,int ) ;

__attribute__((used)) static u16 b43_nphy_read_lpf_ctl(struct b43_wldev *dev, u16 offset)
{
 if (!offset)
  offset = (dev->phy.is_40mhz) ? 0x159 : 0x154;
 return b43_ntab_read(dev, B43_NTAB16(7, offset)) & 0x7;
}
