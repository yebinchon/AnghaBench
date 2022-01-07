
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int rss_pending; } ;


 int BNA_RSS_F_CFG_PENDING ;
 int BNA_RSS_F_RIT_PENDING ;
 int BNA_RSS_F_STATUS_PENDING ;
 int bna_bfi_rit_cfg (struct bna_rxf*) ;
 int bna_bfi_rss_cfg (struct bna_rxf*) ;
 int bna_bfi_rss_enable (struct bna_rxf*) ;

__attribute__((used)) static int
bna_rxf_rss_cfg_apply(struct bna_rxf *rxf)
{
 if (rxf->rss_pending) {
  if (rxf->rss_pending & BNA_RSS_F_RIT_PENDING) {
   rxf->rss_pending &= ~BNA_RSS_F_RIT_PENDING;
   bna_bfi_rit_cfg(rxf);
   return 1;
  }

  if (rxf->rss_pending & BNA_RSS_F_CFG_PENDING) {
   rxf->rss_pending &= ~BNA_RSS_F_CFG_PENDING;
   bna_bfi_rss_cfg(rxf);
   return 1;
  }

  if (rxf->rss_pending & BNA_RSS_F_STATUS_PENDING) {
   rxf->rss_pending &= ~BNA_RSS_F_STATUS_PENDING;
   bna_bfi_rss_enable(rxf);
   return 1;
  }
 }

 return 0;
}
