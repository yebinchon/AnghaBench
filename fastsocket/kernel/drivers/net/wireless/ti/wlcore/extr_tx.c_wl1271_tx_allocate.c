
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct wl12xx_vif {int dummy; } ;
struct wl1271_tx_hw_descr {int id; } ;
struct wl1271 {scalar_t__ aggr_buf_size; scalar_t__ tx_blocks_available; scalar_t__ tx_allocated_blocks; TYPE_1__* links; int links_map; int * tx_allocated_pkts; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_2__ {int allocated_pkts; } ;


 int DEBUG_TX ;
 int EAGAIN ;
 int EBUSY ;
 int skb_get_queue_mapping (struct sk_buff*) ;
 scalar_t__ skb_push (struct sk_buff*,scalar_t__) ;
 scalar_t__ test_bit (size_t,int ) ;
 int wl1271_alloc_tx_id (struct wl1271*,struct sk_buff*) ;
 int wl1271_debug (int ,char*,scalar_t__,scalar_t__,int) ;
 int wl1271_free_tx_id (struct wl1271*,int) ;
 int wl1271_tx_get_queue (int ) ;
 int wl12xx_rearm_tx_watchdog_locked (struct wl1271*) ;
 scalar_t__ wlcore_hw_calc_tx_blocks (struct wl1271*,scalar_t__,scalar_t__) ;
 scalar_t__ wlcore_hw_get_spare_blocks (struct wl1271*,int) ;
 int wlcore_hw_set_tx_desc_blocks (struct wl1271*,struct wl1271_tx_hw_descr*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int wl1271_tx_allocate(struct wl1271 *wl, struct wl12xx_vif *wlvif,
         struct sk_buff *skb, u32 extra, u32 buf_offset,
         u8 hlid, bool is_gem)
{
 struct wl1271_tx_hw_descr *desc;
 u32 total_len = skb->len + sizeof(struct wl1271_tx_hw_descr) + extra;
 u32 total_blocks;
 int id, ret = -EBUSY, ac;
 u32 spare_blocks;

 if (buf_offset + total_len > wl->aggr_buf_size)
  return -EAGAIN;

 spare_blocks = wlcore_hw_get_spare_blocks(wl, is_gem);


 id = wl1271_alloc_tx_id(wl, skb);
 if (id < 0)
  return id;

 total_blocks = wlcore_hw_calc_tx_blocks(wl, total_len, spare_blocks);

 if (total_blocks <= wl->tx_blocks_available) {
  desc = (struct wl1271_tx_hw_descr *)skb_push(
   skb, total_len - skb->len);

  wlcore_hw_set_tx_desc_blocks(wl, desc, total_blocks,
          spare_blocks);

  desc->id = id;

  wl->tx_blocks_available -= total_blocks;
  wl->tx_allocated_blocks += total_blocks;


  if (wl->tx_allocated_blocks == total_blocks)
   wl12xx_rearm_tx_watchdog_locked(wl);

  ac = wl1271_tx_get_queue(skb_get_queue_mapping(skb));
  wl->tx_allocated_pkts[ac]++;

  if (test_bit(hlid, wl->links_map))
   wl->links[hlid].allocated_pkts++;

  ret = 0;

  wl1271_debug(DEBUG_TX,
        "tx_allocate: size: %d, blocks: %d, id: %d",
        total_len, total_blocks, id);
 } else {
  wl1271_free_tx_id(wl, id);
 }

 return ret;
}
