
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u8 ;
struct txentry_desc {int header_length; int flags; } ;
struct skb_frame_desc {struct queue_entry* entry; int flags; void* tx_rate_flags; void* tx_rate_idx; } ;
struct sk_buff {int dummy; } ;
struct queue_entry {int flags; struct sk_buff* skb; } ;
struct TYPE_6__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {TYPE_2__ control; } ;
struct data_queue {int tx_lock; int qid; TYPE_3__* rt2x00dev; } ;
struct TYPE_7__ {int cap_flags; } ;
struct TYPE_5__ {void* flags; void* idx; } ;


 int DRV_PROJECT ;
 int EINVAL ;
 int EIO ;
 int ENOBUFS ;
 int ENTRY_DATA_PENDING ;
 int ENTRY_OWNER_DEVICE_DATA ;
 int ENTRY_TXD_ENCRYPT ;
 int ENTRY_TXD_ENCRYPT_IV ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int Q_INDEX ;
 int REQUIRE_COPY_IV ;
 int REQUIRE_DMA ;
 int REQUIRE_L2PAD ;
 int SKBDESC_NOT_MAC80211 ;
 int clear_bit (int ,int *) ;
 struct skb_frame_desc* get_skb_frame_desc (struct sk_buff*) ;
 int memset (struct skb_frame_desc*,int ,int) ;
 int rt2x00_err (TYPE_3__*,char*,int ,...) ;
 int rt2x00crypto_tx_copy_iv (struct sk_buff*,struct txentry_desc*) ;
 int rt2x00crypto_tx_remove_iv (struct sk_buff*,struct txentry_desc*) ;
 int rt2x00queue_align_frame (struct sk_buff*) ;
 int rt2x00queue_bar_check (struct queue_entry*) ;
 int rt2x00queue_create_tx_descriptor (TYPE_3__*,struct sk_buff*,struct txentry_desc*,int *) ;
 int rt2x00queue_full (struct data_queue*) ;
 struct queue_entry* rt2x00queue_get_entry (struct data_queue*,int ) ;
 int rt2x00queue_index_inc (struct queue_entry*,int ) ;
 int rt2x00queue_insert_l2pad (struct sk_buff*,int ) ;
 int rt2x00queue_kick_tx_queue (struct data_queue*,struct txentry_desc*) ;
 int rt2x00queue_write_tx_data (struct queue_entry*,struct txentry_desc*) ;
 int rt2x00queue_write_tx_descriptor (struct queue_entry*,struct txentry_desc*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

int rt2x00queue_write_tx_frame(struct data_queue *queue, struct sk_buff *skb,
          bool local)
{
 struct ieee80211_tx_info *tx_info;
 struct queue_entry *entry;
 struct txentry_desc txdesc;
 struct skb_frame_desc *skbdesc;
 u8 rate_idx, rate_flags;
 int ret = 0;






 rt2x00queue_create_tx_descriptor(queue->rt2x00dev, skb, &txdesc, ((void*)0));






 tx_info = IEEE80211_SKB_CB(skb);
 rate_idx = tx_info->control.rates[0].idx;
 rate_flags = tx_info->control.rates[0].flags;
 skbdesc = get_skb_frame_desc(skb);
 memset(skbdesc, 0, sizeof(*skbdesc));
 skbdesc->tx_rate_idx = rate_idx;
 skbdesc->tx_rate_flags = rate_flags;

 if (local)
  skbdesc->flags |= SKBDESC_NOT_MAC80211;






 if (test_bit(ENTRY_TXD_ENCRYPT, &txdesc.flags) &&
     !test_bit(ENTRY_TXD_ENCRYPT_IV, &txdesc.flags)) {
  if (test_bit(REQUIRE_COPY_IV, &queue->rt2x00dev->cap_flags))
   rt2x00crypto_tx_copy_iv(skb, &txdesc);
  else
   rt2x00crypto_tx_remove_iv(skb, &txdesc);
 }
 if (test_bit(REQUIRE_L2PAD, &queue->rt2x00dev->cap_flags))
  rt2x00queue_insert_l2pad(skb, txdesc.header_length);
 else if (test_bit(REQUIRE_DMA, &queue->rt2x00dev->cap_flags))
  rt2x00queue_align_frame(skb);




 spin_lock(&queue->tx_lock);

 if (unlikely(rt2x00queue_full(queue))) {
  rt2x00_err(queue->rt2x00dev, "Dropping frame due to full tx queue %d\n",
      queue->qid);
  ret = -ENOBUFS;
  goto out;
 }

 entry = rt2x00queue_get_entry(queue, Q_INDEX);

 if (unlikely(test_and_set_bit(ENTRY_OWNER_DEVICE_DATA,
          &entry->flags))) {
  rt2x00_err(queue->rt2x00dev,
      "Arrived at non-free entry in the non-full queue %d\n"
      "Please file bug report to %s\n",
      queue->qid, DRV_PROJECT);
  ret = -EINVAL;
  goto out;
 }

 skbdesc->entry = entry;
 entry->skb = skb;






 if (unlikely(rt2x00queue_write_tx_data(entry, &txdesc))) {
  clear_bit(ENTRY_OWNER_DEVICE_DATA, &entry->flags);
  entry->skb = ((void*)0);
  ret = -EIO;
  goto out;
 }




 rt2x00queue_bar_check(entry);

 set_bit(ENTRY_DATA_PENDING, &entry->flags);

 rt2x00queue_index_inc(entry, Q_INDEX);
 rt2x00queue_write_tx_descriptor(entry, &txdesc);
 rt2x00queue_kick_tx_queue(queue, &txdesc);

out:
 spin_unlock(&queue->tx_lock);
 return ret;
}
