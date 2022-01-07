
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_3__ {void* phy_corenum; } ;
struct brcms_phy {TYPE_2__* sh; TYPE_1__ pubpi; } ;
struct TYPE_4__ {void* phyrxchain; void* phytxchain; void* hw_phyrxchain; void* hw_phytxchain; } ;


 scalar_t__ hweight8 (void*) ;

void wlc_phy_stf_chain_init(struct brcms_phy_pub *pih, u8 txchain, u8 rxchain)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;

 pi->sh->hw_phytxchain = txchain;
 pi->sh->hw_phyrxchain = rxchain;
 pi->sh->phytxchain = txchain;
 pi->sh->phyrxchain = rxchain;
 pi->pubpi.phy_corenum = (u8)hweight8(pi->sh->phyrxchain);
}
