
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int len; int data; } ;
struct ieee80211_tx_info {int dummy; } ;
struct TYPE_3__ {int txp_requested; } ;
struct ath5k_hw {int ah_tx_ant; scalar_t__ opmode; scalar_t__ ah_ant_mode; int bsent; int (* ah_setup_tx_desc ) (struct ath5k_hw*,struct ath5k_desc*,int ,int ,int const,int ,int,int ,int,int ,int,int ,int ,int ) ;int dev; int hw; TYPE_1__ ah_txpower; } ;
struct ath5k_desc {scalar_t__ ds_data; scalar_t__ ds_link; } ;
struct ath5k_buf {scalar_t__ skbaddr; scalar_t__ daddr; struct ath5k_desc* desc; struct sk_buff* skb; } ;
struct TYPE_4__ {int hw_value; } ;


 scalar_t__ AR5K_ANTMODE_SECTOR_AP ;
 int AR5K_PKT_TYPE_BEACON ;
 int AR5K_TXDESC_NOACK ;
 int AR5K_TXDESC_VEOL ;
 int AR5K_TXKEYIX_INVALID ;
 int ATH5K_DBG (struct ath5k_hw*,int ,char*,struct sk_buff*,int ,int ,unsigned long long) ;
 int ATH5K_DEBUG_BEACON ;
 int ATH5K_ERR (struct ath5k_hw*,char*) ;
 int DMA_TO_DEVICE ;
 int EIO ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ ath5k_hw_hasveol (struct ath5k_hw*) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ dma_map_single (int ,int ,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,scalar_t__) ;
 int dma_unmap_single (int ,scalar_t__,int ,int ) ;
 int ieee80211_get_hdrlen_from_skb (struct sk_buff*) ;
 TYPE_2__* ieee80211_get_tx_rate (int ,struct ieee80211_tx_info*) ;
 int stub1 (struct ath5k_hw*,struct ath5k_desc*,int ,int ,int const,int ,int,int ,int,int ,int,int ,int ,int ) ;

__attribute__((used)) static int
ath5k_beacon_setup(struct ath5k_hw *ah, struct ath5k_buf *bf)
{
 struct sk_buff *skb = bf->skb;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct ath5k_desc *ds;
 int ret = 0;
 u8 antenna;
 u32 flags;
 const int padsize = 0;

 bf->skbaddr = dma_map_single(ah->dev, skb->data, skb->len,
   DMA_TO_DEVICE);
 ATH5K_DBG(ah, ATH5K_DEBUG_BEACON, "skb %p [data %p len %u] "
   "skbaddr %llx\n", skb, skb->data, skb->len,
   (unsigned long long)bf->skbaddr);

 if (dma_mapping_error(ah->dev, bf->skbaddr)) {
  ATH5K_ERR(ah, "beacon DMA mapping failed\n");
  dev_kfree_skb_any(skb);
  bf->skb = ((void*)0);
  return -EIO;
 }

 ds = bf->desc;
 antenna = ah->ah_tx_ant;

 flags = AR5K_TXDESC_NOACK;
 if (ah->opmode == NL80211_IFTYPE_ADHOC && ath5k_hw_hasveol(ah)) {
  ds->ds_link = bf->daddr;
  flags |= AR5K_TXDESC_VEOL;
 } else
  ds->ds_link = 0;
 if (ah->ah_ant_mode == AR5K_ANTMODE_SECTOR_AP)
  antenna = ah->bsent & 4 ? 2 : 1;





 ds->ds_data = bf->skbaddr;
 ret = ah->ah_setup_tx_desc(ah, ds, skb->len,
   ieee80211_get_hdrlen_from_skb(skb), padsize,
   AR5K_PKT_TYPE_BEACON,
   (ah->ah_txpower.txp_requested * 2),
   ieee80211_get_tx_rate(ah->hw, info)->hw_value,
   1, AR5K_TXKEYIX_INVALID,
   antenna, flags, 0, 0);
 if (ret)
  goto err_unmap;

 return 0;
err_unmap:
 dma_unmap_single(ah->dev, bf->skbaddr, skb->len, DMA_TO_DEVICE);
 return ret;
}
