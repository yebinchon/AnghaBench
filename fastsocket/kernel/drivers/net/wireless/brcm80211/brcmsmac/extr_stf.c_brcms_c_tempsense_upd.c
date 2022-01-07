
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_c_info {TYPE_1__* stf; TYPE_2__* band; } ;
struct TYPE_4__ {struct brcms_phy_pub* pi; } ;
struct TYPE_3__ {int txchain; int hw_txchain; } ;


 int brcms_c_stf_txchain_set (struct brcms_c_info*,int,int) ;
 int wlc_phy_stf_chain_active_get (struct brcms_phy_pub*) ;

void brcms_c_tempsense_upd(struct brcms_c_info *wlc)
{
 struct brcms_phy_pub *pi = wlc->band->pi;
 uint active_chains, txchain;



 active_chains = wlc_phy_stf_chain_active_get(pi);
 txchain = active_chains & 0xf;

 if (wlc->stf->txchain == wlc->stf->hw_txchain) {
  if (txchain && (txchain < wlc->stf->hw_txchain))

   brcms_c_stf_txchain_set(wlc, txchain, 1);
 } else if (wlc->stf->txchain < wlc->stf->hw_txchain) {
  if (txchain == wlc->stf->hw_txchain)

   brcms_c_stf_txchain_set(wlc, txchain, 1);
 }
}
