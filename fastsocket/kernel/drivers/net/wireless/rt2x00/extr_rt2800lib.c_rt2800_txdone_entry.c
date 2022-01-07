
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef void* u16 ;
struct txdone_entry_desc {int retry; scalar_t__ flags; } ;
struct skb_frame_desc {void* tx_rate_idx; } ;
struct rt2x00_dev {int long_retry; } ;
struct queue_entry {int skb; TYPE_1__* queue; } ;
typedef int __le32 ;
struct TYPE_2__ {struct rt2x00_dev* rt2x00dev; } ;


 int TXDONE_AMPDU ;
 int TXDONE_FAILURE ;
 int TXDONE_FALLBACK ;
 int TXDONE_SUCCESS ;
 int TXWI_W0_AMPDU ;
 int TXWI_W0_MCS ;
 int TX_STA_FIFO_MCS ;
 int TX_STA_FIFO_TX_AGGRE ;
 int TX_STA_FIFO_TX_SUCCESS ;
 int __set_bit (int ,scalar_t__*) ;
 struct skb_frame_desc* get_skb_frame_desc (int ) ;
 int rt2x00_desc_read (int *,int ,int *) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00lib_txdone (struct queue_entry*,struct txdone_entry_desc*) ;
 scalar_t__ unlikely (int) ;

void rt2800_txdone_entry(struct queue_entry *entry, u32 status, __le32 *txwi)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 struct txdone_entry_desc txdesc;
 u32 word;
 u16 mcs, real_mcs;
 int aggr, ampdu;




 txdesc.flags = 0;
 rt2x00_desc_read(txwi, 0, &word);

 mcs = rt2x00_get_field32(word, TXWI_W0_MCS);
 ampdu = rt2x00_get_field32(word, TXWI_W0_AMPDU);

 real_mcs = rt2x00_get_field32(status, TX_STA_FIFO_MCS);
 aggr = rt2x00_get_field32(status, TX_STA_FIFO_TX_AGGRE);
 if (unlikely(aggr == 1 && ampdu == 0 && real_mcs != mcs)) {
  skbdesc->tx_rate_idx = real_mcs;
  mcs = real_mcs;
 }

 if (aggr == 1 || ampdu == 1)
  __set_bit(TXDONE_AMPDU, &txdesc.flags);
 if (rt2x00_get_field32(status, TX_STA_FIFO_TX_SUCCESS)) {




  __set_bit(TXDONE_SUCCESS, &txdesc.flags);
  txdesc.retry = ((mcs > real_mcs) ? mcs - real_mcs : 0);
 } else {





  __set_bit(TXDONE_FAILURE, &txdesc.flags);
  txdesc.retry = rt2x00dev->long_retry;
 }





 if (txdesc.retry)
  __set_bit(TXDONE_FALLBACK, &txdesc.flags);

 rt2x00lib_txdone(entry, &txdesc);
}
