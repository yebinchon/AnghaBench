
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef int u16 ;
struct radio_20xx_regs {int address; scalar_t__ init; scalar_t__ do_init; } ;
struct brcms_phy {int dummy; } ;


 int write_radio_reg (struct brcms_phy*,int,int ) ;

uint
wlc_phy_init_radio_regs_allbands(struct brcms_phy *pi,
     struct radio_20xx_regs *radioregs)
{
 uint i = 0;

 do {
  if (radioregs[i].do_init)
   write_radio_reg(pi, radioregs[i].address,
     (u16) radioregs[i].init);

  i++;
 } while (radioregs[i].address != 0xffff);

 return i;
}
