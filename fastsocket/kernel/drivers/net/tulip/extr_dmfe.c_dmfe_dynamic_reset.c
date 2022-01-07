
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmfe_board_info {int cr6_data; scalar_t__ wait_reset; scalar_t__ rx_avail_cnt; scalar_t__ tx_queue_cnt; scalar_t__ tx_packet_cnt; } ;
struct DEVICE {scalar_t__ base_addr; } ;


 int CR6_RXSC ;
 int CR6_TXSC ;
 scalar_t__ DCR5 ;
 scalar_t__ DCR7 ;
 int DMFE_DBUG (int ,char*,int ) ;
 int dmfe_free_rxbuffer (struct dmfe_board_info*) ;
 int dmfe_init_dm910x (struct DEVICE*) ;
 int inl (scalar_t__) ;
 struct dmfe_board_info* netdev_priv (struct DEVICE*) ;
 int netif_carrier_off (struct DEVICE*) ;
 int netif_stop_queue (struct DEVICE*) ;
 int netif_wake_queue (struct DEVICE*) ;
 int outl (int ,scalar_t__) ;
 int update_cr6 (int,scalar_t__) ;

__attribute__((used)) static void dmfe_dynamic_reset(struct DEVICE *dev)
{
 struct dmfe_board_info *db = netdev_priv(dev);

 DMFE_DBUG(0, "dmfe_dynamic_reset()", 0);


 db->cr6_data &= ~(CR6_RXSC | CR6_TXSC);
 update_cr6(db->cr6_data, dev->base_addr);
 outl(0, dev->base_addr + DCR7);
 outl(inl(dev->base_addr + DCR5), dev->base_addr + DCR5);


 netif_stop_queue(dev);


 dmfe_free_rxbuffer(db);


 db->tx_packet_cnt = 0;
 db->tx_queue_cnt = 0;
 db->rx_avail_cnt = 0;
 netif_carrier_off(dev);
 db->wait_reset = 0;


 dmfe_init_dm910x(dev);


 netif_wake_queue(dev);
}
