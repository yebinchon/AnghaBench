
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rndis_packet {scalar_t__ data_offset; scalar_t__ data_len; } ;
struct TYPE_3__ {struct rndis_packet pkt; } ;
struct rndis_message {TYPE_1__ msg; } ;
struct rndis_device {TYPE_2__* net_dev; } ;
struct ndis_pkt_8021q_info {int vlanid; int pri; } ;
struct hv_netvsc_packet {scalar_t__ total_data_buflen; int is_data_pkt; int vlan_tci; void* data; } ;
struct TYPE_4__ {int dev; int ndev; } ;


 int IEEE_8021Q_INFO ;
 scalar_t__ RNDIS_HEADER_SIZE ;
 int VLAN_PRIO_SHIFT ;
 int VLAN_TAG_PRESENT ;
 int netdev_err (int ,char*,scalar_t__,scalar_t__) ;
 int netvsc_recv_callback (int ,struct hv_netvsc_packet*) ;
 struct ndis_pkt_8021q_info* rndis_get_ppi (struct rndis_packet*,int ) ;

__attribute__((used)) static void rndis_filter_receive_data(struct rndis_device *dev,
       struct rndis_message *msg,
       struct hv_netvsc_packet *pkt)
{
 struct rndis_packet *rndis_pkt;
 u32 data_offset;
 struct ndis_pkt_8021q_info *vlan;

 rndis_pkt = &msg->msg.pkt;


 data_offset = RNDIS_HEADER_SIZE + rndis_pkt->data_offset;

 pkt->total_data_buflen -= data_offset;





 if (pkt->total_data_buflen < rndis_pkt->data_len) {
  netdev_err(dev->net_dev->ndev, "rndis message buffer "
      "overflow detected (got %u, min %u)"
      "...dropping this message!\n",
      pkt->total_data_buflen, rndis_pkt->data_len);
  return;
 }






 pkt->total_data_buflen = rndis_pkt->data_len;
 pkt->data = (void *)((unsigned long)pkt->data + data_offset);

 pkt->is_data_pkt = 1;

 vlan = rndis_get_ppi(rndis_pkt, IEEE_8021Q_INFO);
 if (vlan) {
  pkt->vlan_tci = VLAN_TAG_PRESENT | vlan->vlanid |
   (vlan->pri << VLAN_PRIO_SHIFT);
 } else {
  pkt->vlan_tci = 0;
 }

 netvsc_recv_callback(dev->net_dev->dev, pkt);
}
