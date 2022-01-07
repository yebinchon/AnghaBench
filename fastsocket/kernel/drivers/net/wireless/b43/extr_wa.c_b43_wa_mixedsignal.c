
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_OFDMTAB_DAC ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int ,int,int) ;

__attribute__((used)) static void b43_wa_mixedsignal(struct b43_wldev *dev)
{
 b43_ofdmtab_write16(dev, B43_OFDMTAB_DAC, 1, 3);
}
