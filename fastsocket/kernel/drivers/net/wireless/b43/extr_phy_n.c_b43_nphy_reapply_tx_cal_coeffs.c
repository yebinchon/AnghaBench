
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ channel_freq; scalar_t__ channel_type; struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {scalar_t__ center_freq; scalar_t__ channel_type; } ;
struct b43_phy_n {scalar_t__* txiqlocal_bestc; TYPE_1__ txiqlocal_chanspec; int txiqlocal_coeffsvalid; } ;


 int B43_NTAB16 (int,int) ;
 int b43_ntab_read_bulk (struct b43_wldev*,int ,int,scalar_t__*) ;
 int b43_ntab_write_bulk (struct b43_wldev*,int ,int,scalar_t__*) ;

__attribute__((used)) static void b43_nphy_reapply_tx_cal_coeffs(struct b43_wldev *dev)
{
 struct b43_phy_n *nphy = dev->phy.n;
 u8 i;
 u16 buffer[7];
 bool equal = 1;

 if (!nphy->txiqlocal_coeffsvalid ||
     nphy->txiqlocal_chanspec.center_freq != dev->phy.channel_freq ||
     nphy->txiqlocal_chanspec.channel_type != dev->phy.channel_type)
  return;

 b43_ntab_read_bulk(dev, B43_NTAB16(15, 80), 7, buffer);
 for (i = 0; i < 4; i++) {
  if (buffer[i] != nphy->txiqlocal_bestc[i]) {
   equal = 0;
   break;
  }
 }

 if (!equal) {
  b43_ntab_write_bulk(dev, B43_NTAB16(15, 80), 4,
     nphy->txiqlocal_bestc);
  for (i = 0; i < 4; i++)
   buffer[i] = 0;
  b43_ntab_write_bulk(dev, B43_NTAB16(15, 88), 4,
     buffer);
  b43_ntab_write_bulk(dev, B43_NTAB16(15, 85), 2,
     &nphy->txiqlocal_bestc[5]);
  b43_ntab_write_bulk(dev, B43_NTAB16(15, 93), 2,
     &nphy->txiqlocal_bestc[5]);
 }
}
