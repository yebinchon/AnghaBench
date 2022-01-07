
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KS_P1ANAR ;
 int KS_P1ANLPR ;
 int KS_P1MBCR ;
 int KS_P1MBSR ;
 int KS_PHY1IHR ;
 int KS_PHY1ILR ;







__attribute__((used)) static int ks_phy_reg(int reg)
{
 switch (reg) {
 case 132:
  return KS_P1MBCR;
 case 131:
  return KS_P1MBSR;
 case 129:
  return KS_PHY1ILR;
 case 128:
  return KS_PHY1IHR;
 case 133:
  return KS_P1ANAR;
 case 130:
  return KS_P1ANLPR;
 }

 return 0x0;
}
