
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {scalar_t__ tx_frames_cnt; scalar_t__ num_tx_desc; int ** tx_frames; int flags; int tx_frames_map; } ;


 int WL1271_FLAG_FW_TX_BUSY ;
 scalar_t__ __test_and_clear_bit (int,int ) ;
 int clear_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

void wl1271_free_tx_id(struct wl1271 *wl, int id)
{
 if (__test_and_clear_bit(id, wl->tx_frames_map)) {
  if (unlikely(wl->tx_frames_cnt == wl->num_tx_desc))
   clear_bit(WL1271_FLAG_FW_TX_BUSY, &wl->flags);

  wl->tx_frames[id] = ((void*)0);
  wl->tx_frames_cnt--;
 }
}
