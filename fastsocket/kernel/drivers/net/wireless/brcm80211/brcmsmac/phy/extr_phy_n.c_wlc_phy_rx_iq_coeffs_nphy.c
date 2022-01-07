
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nphy_iq_comp {void* b1; void* a1; void* b0; void* a0; } ;
struct brcms_phy {int dummy; } ;


 void* read_phy_reg (struct brcms_phy*,int) ;
 int write_phy_reg (struct brcms_phy*,int,void*) ;

void
wlc_phy_rx_iq_coeffs_nphy(struct brcms_phy *pi, u8 write,
     struct nphy_iq_comp *pcomp)
{
 if (write) {
  write_phy_reg(pi, 0x9a, pcomp->a0);
  write_phy_reg(pi, 0x9b, pcomp->b0);
  write_phy_reg(pi, 0x9c, pcomp->a1);
  write_phy_reg(pi, 0x9d, pcomp->b1);
 } else {
  pcomp->a0 = read_phy_reg(pi, 0x9a);
  pcomp->b0 = read_phy_reg(pi, 0x9b);
  pcomp->a1 = read_phy_reg(pi, 0x9c);
  pcomp->b1 = read_phy_reg(pi, 0x9d);
 }
}
