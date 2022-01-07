
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1271 {int flags; int wl_lock; int * tx_queue_count; int dummy_packet; } ;


 int WL1271_FLAG_DUMMY_PACKET_PENDING ;
 int WL1271_FLAG_FW_TX_BUSY ;
 int set_bit (int ,int *) ;
 int skb_get_queue_mapping (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;
 int wl1271_tx_get_queue (int ) ;
 int wlcore_tx_work_locked (struct wl1271*) ;

int wl1271_tx_dummy_packet(struct wl1271 *wl)
{
 unsigned long flags;
 int q;


 if (test_bit(WL1271_FLAG_DUMMY_PACKET_PENDING, &wl->flags))
  return 0;

 q = wl1271_tx_get_queue(skb_get_queue_mapping(wl->dummy_packet));

 spin_lock_irqsave(&wl->wl_lock, flags);
 set_bit(WL1271_FLAG_DUMMY_PACKET_PENDING, &wl->flags);
 wl->tx_queue_count[q]++;
 spin_unlock_irqrestore(&wl->wl_lock, flags);


 if (!test_bit(WL1271_FLAG_FW_TX_BUSY, &wl->flags))
  return wlcore_tx_work_locked(wl);





 return 0;
}
