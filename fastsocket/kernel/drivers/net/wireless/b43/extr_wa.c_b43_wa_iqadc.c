
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int analog; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int B43_OFDMTAB_DAC ;
 int b43_ofdmtab_read16 (struct b43_wldev*,int ,int ) ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int ,int ,int) ;

__attribute__((used)) static void b43_wa_iqadc(struct b43_wldev *dev)
{
 if (dev->phy.analog == 4)
  b43_ofdmtab_write16(dev, B43_OFDMTAB_DAC, 0,
   b43_ofdmtab_read16(dev, B43_OFDMTAB_DAC, 0) & ~0xF000);
}
