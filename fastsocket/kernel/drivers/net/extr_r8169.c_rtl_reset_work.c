
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int mmio_addr; int napi; scalar_t__ RxDescArray; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int NUM_RX_DESC ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int rtl8169_check_link_status (struct net_device*,struct rtl8169_private*,int ) ;
 int rtl8169_hw_reset (struct rtl8169_private*) ;
 int rtl8169_init_ring_indexes (struct rtl8169_private*) ;
 int rtl8169_mark_to_asic (scalar_t__,int ) ;
 int rtl8169_tx_clear (struct rtl8169_private*) ;
 int rtl_hw_start (struct net_device*) ;
 int rx_buf_sz ;
 int synchronize_sched () ;

__attribute__((used)) static void rtl_reset_work(struct rtl8169_private *tp)
{
 struct net_device *dev = tp->dev;
 int i;

 napi_disable(&tp->napi);
 netif_stop_queue(dev);
 synchronize_sched();

 rtl8169_hw_reset(tp);

 for (i = 0; i < NUM_RX_DESC; i++)
  rtl8169_mark_to_asic(tp->RxDescArray + i, rx_buf_sz);

 rtl8169_tx_clear(tp);
 rtl8169_init_ring_indexes(tp);

 napi_enable(&tp->napi);
 rtl_hw_start(dev);
 netif_wake_queue(dev);
 rtl8169_check_link_status(dev, tp, tp->mmio_addr);
}
