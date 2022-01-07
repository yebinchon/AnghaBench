
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct packet_task {scalar_t__ tx_type; struct hpsb_packet* packet; TYPE_1__* skb; int addr; int dest_node; struct eth1394_priv* priv; } ;
struct hpsb_packet {int dummy; } ;
struct eth1394_priv {int host; } ;
typedef int quadlet_t ;
struct TYPE_2__ {int data; } ;


 int EAGAIN ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ ETH1394_GASP ;
 struct hpsb_packet* ether1394_alloc_common_packet (int ) ;
 int ether1394_complete_cb ;
 int ether1394_free_packet (struct hpsb_packet*) ;
 int ether1394_prep_gasp_packet (struct hpsb_packet*,struct eth1394_priv*,TYPE_1__*,int) ;
 scalar_t__ ether1394_prep_write_packet (struct hpsb_packet*,int ,int ,int ,int ,unsigned int) ;
 int hpsb_free_packet (struct hpsb_packet*) ;
 scalar_t__ hpsb_send_packet (struct hpsb_packet*) ;
 int hpsb_set_packet_complete_task (struct hpsb_packet*,int ,struct packet_task*) ;

__attribute__((used)) static int ether1394_send_packet(struct packet_task *ptask, unsigned int tx_len)
{
 struct eth1394_priv *priv = ptask->priv;
 struct hpsb_packet *packet = ((void*)0);

 packet = ether1394_alloc_common_packet(priv->host);
 if (!packet)
  return -ENOMEM;

 if (ptask->tx_type == ETH1394_GASP) {
  int length = tx_len + 2 * sizeof(quadlet_t);

  ether1394_prep_gasp_packet(packet, priv, ptask->skb, length);
 } else if (ether1394_prep_write_packet(packet, priv->host,
            ptask->dest_node,
            ptask->addr, ptask->skb->data,
            tx_len)) {
  hpsb_free_packet(packet);
  return -EAGAIN;
 }

 ptask->packet = packet;
 hpsb_set_packet_complete_task(ptask->packet, ether1394_complete_cb,
          ptask);

 if (hpsb_send_packet(packet) < 0) {
  ether1394_free_packet(packet);
  return -EIO;
 }

 return 0;
}
