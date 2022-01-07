
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int wlc_phy_table_read_nphy (struct brcms_phy*,int,int,int,int,int *) ;

__attribute__((used)) static u16 wlc_phy_ipa_get_bbmult_nphy(struct brcms_phy *pi)
{
 u16 m0m1;

 wlc_phy_table_read_nphy(pi, 15, 1, 87, 16, &m0m1);

 return m0m1;
}
