
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int dummy; } ;


 int BNA_HARD_CLEANUP ;
 scalar_t__ bna_rxf_allmulti_cfg_reset (struct bna_rxf*,int ) ;
 scalar_t__ bna_rxf_mcast_cfg_reset (struct bna_rxf*,int ) ;
 scalar_t__ bna_rxf_promisc_cfg_reset (struct bna_rxf*,int ) ;
 scalar_t__ bna_rxf_ucast_cfg_reset (struct bna_rxf*,int ) ;

__attribute__((used)) static int
bna_rxf_fltr_clear(struct bna_rxf *rxf)
{
 if (bna_rxf_ucast_cfg_reset(rxf, BNA_HARD_CLEANUP))
  return 1;

 if (bna_rxf_mcast_cfg_reset(rxf, BNA_HARD_CLEANUP))
  return 1;

 if (bna_rxf_promisc_cfg_reset(rxf, BNA_HARD_CLEANUP))
  return 1;

 if (bna_rxf_allmulti_cfg_reset(rxf, BNA_HARD_CLEANUP))
  return 1;

 return 0;
}
