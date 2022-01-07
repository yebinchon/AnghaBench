
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {TYPE_1__ pubpi; } ;


 scalar_t__ ISLCNPHY (struct brcms_phy*) ;
 scalar_t__ ISNPHY (struct brcms_phy*) ;
 scalar_t__ NREV_GE (int ,int) ;
 int and_phy_reg (struct brcms_phy*,int,int) ;
 int or_phy_reg (struct brcms_phy*,int,int) ;
 int write_phy_reg (struct brcms_phy*,int,int) ;

void wlc_phy_anacore(struct brcms_phy_pub *pih, bool on)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 if (ISNPHY(pi)) {
  if (on) {
   if (NREV_GE(pi->pubpi.phy_rev, 3)) {
    write_phy_reg(pi, 0xa6, 0x0d);
    write_phy_reg(pi, 0x8f, 0x0);
    write_phy_reg(pi, 0xa7, 0x0d);
    write_phy_reg(pi, 0xa5, 0x0);
   } else {
    write_phy_reg(pi, 0xa5, 0x0);
   }
  } else {
   if (NREV_GE(pi->pubpi.phy_rev, 3)) {
    write_phy_reg(pi, 0x8f, 0x07ff);
    write_phy_reg(pi, 0xa6, 0x0fd);
    write_phy_reg(pi, 0xa5, 0x07ff);
    write_phy_reg(pi, 0xa7, 0x0fd);
   } else {
    write_phy_reg(pi, 0xa5, 0x7fff);
   }
  }
 } else if (ISLCNPHY(pi)) {
  if (on) {
   and_phy_reg(pi, 0x43b,
        ~((0x1 << 0) | (0x1 << 1) | (0x1 << 2)));
  } else {
   or_phy_reg(pi, 0x43c,
       (0x1 << 0) | (0x1 << 1) | (0x1 << 2));
   or_phy_reg(pi, 0x43b,
       (0x1 << 0) | (0x1 << 1) | (0x1 << 2));
  }
 }
}
