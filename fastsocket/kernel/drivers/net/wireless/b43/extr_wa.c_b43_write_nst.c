
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_OFDMTAB_NOISESCALE ;
 int B43_TAB_NOISESCALE_SIZE ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int ,int,int const) ;

__attribute__((used)) static void b43_write_nst(struct b43_wldev *dev, const u16 *nst)
{
 int i;

 for (i = 0; i < B43_TAB_NOISESCALE_SIZE; i++)
  b43_ofdmtab_write16(dev, B43_OFDMTAB_NOISESCALE, i, nst[i]);
}
