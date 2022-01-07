
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {int dummy; } ;
struct dma_pub {int dummy; } ;
struct brcms_hardware {struct dma_pub** di; } ;


 int NFIFO ;
 int dma_walk_packets (struct dma_pub*,void*,struct ieee80211_sta*) ;

void brcms_c_inval_dma_pkts(struct brcms_hardware *hw,
          struct ieee80211_sta *sta,
          void (*dma_callback_fn))
{
 struct dma_pub *dmah;
 int i;
 for (i = 0; i < NFIFO; i++) {
  dmah = hw->di[i];
  if (dmah != ((void*)0))
   dma_walk_packets(dmah, dma_callback_fn, sta);
 }
}
