
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int tx_queue_len; scalar_t__ flags; int dev_addr; int broadcast; int addr_len; int mtu; scalar_t__ hard_header_len; int type; int * header_ops; int * netdev_ops; } ;
struct hdlcdrv_channel_params {int member_0; int member_1; int member_2; int member_3; int member_4; } ;
struct baycom_state {int * skb; scalar_t__ ptt_keyed; struct hdlcdrv_channel_params ch_params; } ;


 int ARPHRD_AX25 ;
 int AX25_ADDR_LEN ;
 scalar_t__ AX25_BPQ_HEADER_LEN ;
 int AX25_DEF_PACLEN ;
 scalar_t__ AX25_MAX_HEADER_LEN ;
 int ax25_bcast ;
 int ax25_header_ops ;
 int baycom_netdev_ops ;
 int memcpy (int ,int *,int ) ;
 struct baycom_state* netdev_priv (struct net_device*) ;
 int null_ax25_address ;

__attribute__((used)) static void baycom_probe(struct net_device *dev)
{
 const struct hdlcdrv_channel_params dflt_ch_params = {
  20, 2, 10, 40, 0
 };
 struct baycom_state *bc;




 bc = netdev_priv(dev);



 bc->ch_params = dflt_ch_params;
 bc->ptt_keyed = 0;






 bc->skb = ((void*)0);

 dev->netdev_ops = &baycom_netdev_ops;
 dev->header_ops = &ax25_header_ops;

 dev->type = ARPHRD_AX25;
 dev->hard_header_len = AX25_MAX_HEADER_LEN + AX25_BPQ_HEADER_LEN;
 dev->mtu = AX25_DEF_PACLEN;
 dev->addr_len = AX25_ADDR_LEN;
 memcpy(dev->broadcast, &ax25_bcast, AX25_ADDR_LEN);
 memcpy(dev->dev_addr, &null_ax25_address, AX25_ADDR_LEN);
 dev->tx_queue_len = 16;


 dev->flags = 0;
}
