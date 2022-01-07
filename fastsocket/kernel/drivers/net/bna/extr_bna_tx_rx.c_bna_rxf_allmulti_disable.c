
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int rxmode_active; int rxmode_pending_bitmask; int rxmode_pending; } ;


 int BNA_RXMODE_ALLMULTI ;
 int allmulti_disable (int ,int ) ;
 int allmulti_inactive (int ,int ) ;
 scalar_t__ is_allmulti_disable (int ,int ) ;
 scalar_t__ is_allmulti_enable (int ,int ) ;

__attribute__((used)) static int
bna_rxf_allmulti_disable(struct bna_rxf *rxf)
{
 int ret = 0;

 if (is_allmulti_disable(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask) ||
  (!(rxf->rxmode_active & BNA_RXMODE_ALLMULTI))) {

 } else if (is_allmulti_enable(rxf->rxmode_pending,
     rxf->rxmode_pending_bitmask)) {

  allmulti_inactive(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask);
 } else if (rxf->rxmode_active & BNA_RXMODE_ALLMULTI) {

  allmulti_disable(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask);
  ret = 1;
 }

 return ret;
}
