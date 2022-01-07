
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; } ;
struct TYPE_2__ {int phyrxchain; int phytxchain; } ;



void wlc_phy_stf_chain_get(struct brcms_phy_pub *pih, u8 *txchain, u8 *rxchain)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 *txchain = pi->sh->phytxchain;
 *rxchain = pi->sh->phyrxchain;
}
