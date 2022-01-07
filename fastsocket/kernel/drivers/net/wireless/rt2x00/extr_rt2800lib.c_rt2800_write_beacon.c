
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct txentry_desc {int dummy; } ;
struct skb_frame_desc {int desc_len; int desc; int flags; } ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry {TYPE_2__* skb; int entry_idx; TYPE_1__* queue; } ;
struct TYPE_8__ {unsigned int len; int data; } ;
struct TYPE_7__ {int winfo_size; struct rt2x00_dev* rt2x00dev; } ;


 int BCN_TIME_CFG ;
 int BCN_TIME_CFG_BEACON_GEN ;
 int DUMP_FRAME_BEACON ;
 unsigned int HW_BEACON_OFFSET (int ) ;
 int SKBDESC_DESC_IN_SKB ;
 int dev_kfree_skb_any (TYPE_2__*) ;
 struct skb_frame_desc* get_skb_frame_desc (TYPE_2__*) ;
 int memset (int ,int ,int const) ;
 unsigned int roundup (unsigned int,int) ;
 int rt2800_register_multiwrite (struct rt2x00_dev*,unsigned int,int ,unsigned int) ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2800_write_tx_data (struct queue_entry*,struct txentry_desc*) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00debug_dump_frame (struct rt2x00_dev*,int ,TYPE_2__*) ;
 scalar_t__ skb_pad (TYPE_2__*,unsigned int) ;
 int skb_push (TYPE_2__*,int const) ;

void rt2800_write_beacon(struct queue_entry *entry, struct txentry_desc *txdesc)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 struct skb_frame_desc *skbdesc = get_skb_frame_desc(entry->skb);
 unsigned int beacon_base;
 unsigned int padding_len;
 u32 orig_reg, reg;
 const int txwi_desc_size = entry->queue->winfo_size;





 rt2800_register_read(rt2x00dev, BCN_TIME_CFG, &reg);
 orig_reg = reg;
 rt2x00_set_field32(&reg, BCN_TIME_CFG_BEACON_GEN, 0);
 rt2800_register_write(rt2x00dev, BCN_TIME_CFG, reg);




 memset(skb_push(entry->skb, txwi_desc_size), 0, txwi_desc_size);




 skbdesc->flags |= SKBDESC_DESC_IN_SKB;
 skbdesc->desc = entry->skb->data;
 skbdesc->desc_len = txwi_desc_size;




 rt2800_write_tx_data(entry, txdesc);




 rt2x00debug_dump_frame(rt2x00dev, DUMP_FRAME_BEACON, entry->skb);




 padding_len = roundup(entry->skb->len, 4) - entry->skb->len;
 if (padding_len && skb_pad(entry->skb, padding_len)) {
  rt2x00_err(rt2x00dev, "Failure padding beacon, aborting\n");

  entry->skb = ((void*)0);
  rt2800_register_write(rt2x00dev, BCN_TIME_CFG, orig_reg);
  return;
 }

 beacon_base = HW_BEACON_OFFSET(entry->entry_idx);
 rt2800_register_multiwrite(rt2x00dev, beacon_base, entry->skb->data,
       entry->skb->len + padding_len);




 rt2x00_set_field32(&reg, BCN_TIME_CFG_BEACON_GEN, 1);
 rt2800_register_write(rt2x00dev, BCN_TIME_CFG, reg);




 dev_kfree_skb_any(entry->skb);
 entry->skb = ((void*)0);
}
