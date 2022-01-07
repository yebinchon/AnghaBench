
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ixgbe_ring {int count; } ;
struct ixgbe_adapter {struct ixgbe_ring test_rx_ring; struct ixgbe_ring test_tx_ring; } ;
typedef int netdev_tx_t ;


 int GFP_KERNEL ;
 int NETDEV_TX_OK ;
 struct sk_buff* alloc_skb (unsigned int,int ) ;
 int ixgbe_clean_test_rings (struct ixgbe_ring*,struct ixgbe_ring*,unsigned int) ;
 int ixgbe_create_lbtest_frame (struct sk_buff*,unsigned int) ;
 int ixgbe_xmit_frame_ring (struct sk_buff*,struct ixgbe_adapter*,struct ixgbe_ring*) ;
 int kfree_skb (struct sk_buff*) ;
 int msleep (int) ;
 int skb_get (struct sk_buff*) ;
 int skb_put (struct sk_buff*,unsigned int) ;

__attribute__((used)) static int ixgbe_run_loopback_test(struct ixgbe_adapter *adapter)
{
 struct ixgbe_ring *tx_ring = &adapter->test_tx_ring;
 struct ixgbe_ring *rx_ring = &adapter->test_rx_ring;
 int i, j, lc, good_cnt, ret_val = 0;
 unsigned int size = 1024;
 netdev_tx_t tx_ret_val;
 struct sk_buff *skb;


 skb = alloc_skb(size, GFP_KERNEL);
 if (!skb)
  return 11;


 ixgbe_create_lbtest_frame(skb, size);
 skb_put(skb, size);







 if (rx_ring->count <= tx_ring->count)
  lc = ((tx_ring->count / 64) * 2) + 1;
 else
  lc = ((rx_ring->count / 64) * 2) + 1;

 for (j = 0; j <= lc; j++) {

  good_cnt = 0;


  for (i = 0; i < 64; i++) {
   skb_get(skb);
   tx_ret_val = ixgbe_xmit_frame_ring(skb,
          adapter,
          tx_ring);
   if (tx_ret_val == NETDEV_TX_OK)
    good_cnt++;
  }

  if (good_cnt != 64) {
   ret_val = 12;
   break;
  }


  msleep(200);

  good_cnt = ixgbe_clean_test_rings(rx_ring, tx_ring, size);
  if (good_cnt != 64) {
   ret_val = 13;
   break;
  }
 }


 kfree_skb(skb);

 return ret_val;
}
