
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_params {int bp; } ;
struct bnx2x_phy {int type; } ;






 int bnx2x_8726_set_limiting_mode (int ,struct bnx2x_phy*,int ) ;
 int bnx2x_8727_set_limiting_mode (int ,struct bnx2x_phy*,int ) ;
 int bnx2x_warpcore_set_limiting_mode (struct link_params*,struct bnx2x_phy*,int ) ;

__attribute__((used)) static void bnx2x_set_limiting_mode(struct link_params *params,
        struct bnx2x_phy *phy,
        u16 edc_mode)
{
 switch (phy->type) {
 case 130:
  bnx2x_8726_set_limiting_mode(params->bp, phy, edc_mode);
  break;
 case 129:
 case 131:
  bnx2x_8727_set_limiting_mode(params->bp, phy, edc_mode);
  break;
 case 128:
  bnx2x_warpcore_set_limiting_mode(params, phy, edc_mode);
  break;
 }
}
