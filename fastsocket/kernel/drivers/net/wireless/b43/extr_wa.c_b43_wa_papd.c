
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_OFDMTAB_PWRDYN2 ;
 int B43_OFDMTAB_UNKNOWN_APHY ;
 int b43_dummy_transmission (struct b43_wldev*,int,int) ;
 int b43_ofdmtab_read16 (struct b43_wldev*,int ,int ) ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int ,int ,int) ;

__attribute__((used)) static void b43_wa_papd(struct b43_wldev *dev)
{
 u16 backup;

 backup = b43_ofdmtab_read16(dev, B43_OFDMTAB_PWRDYN2, 0);
 b43_ofdmtab_write16(dev, B43_OFDMTAB_PWRDYN2, 0, 7);
 b43_ofdmtab_write16(dev, B43_OFDMTAB_UNKNOWN_APHY, 0, 0);
 b43_dummy_transmission(dev, 1, 1);
 b43_ofdmtab_write16(dev, B43_OFDMTAB_PWRDYN2, 0, backup);
}
