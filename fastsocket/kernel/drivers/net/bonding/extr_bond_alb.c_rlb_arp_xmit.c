
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct slave {TYPE_2__* dev; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int rlb_update_delay_counter; } ;
struct bonding {TYPE_1__ alb_info; } ;
struct arp_pkt {scalar_t__ op_code; int ip_src; int mac_src; } ;
struct TYPE_4__ {int dev_addr; } ;


 int ARPOP_REPLY ;
 int ARPOP_REQUEST ;
 int ETH_ALEN ;
 int RLB_UPDATE_DELAY ;
 struct arp_pkt* arp_pkt (struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int memcpy (int ,int ,int ) ;
 int pr_debug (char*) ;
 struct slave* rlb_choose_channel (struct sk_buff*,struct bonding*) ;
 int rlb_req_update_subnet_clients (struct bonding*,int ) ;

__attribute__((used)) static struct slave *rlb_arp_xmit(struct sk_buff *skb, struct bonding *bond)
{
 struct arp_pkt *arp = arp_pkt(skb);
 struct slave *tx_slave = ((void*)0);

 if (arp->op_code == htons(ARPOP_REPLY)) {



  tx_slave = rlb_choose_channel(skb, bond);
  if (tx_slave) {
   memcpy(arp->mac_src,tx_slave->dev->dev_addr, ETH_ALEN);
  }
  pr_debug("Server sent ARP Reply packet\n");
 } else if (arp->op_code == htons(ARPOP_REQUEST)) {





  rlb_choose_channel(skb, bond);




  bond->alb_info.rlb_update_delay_counter = RLB_UPDATE_DELAY;






  rlb_req_update_subnet_clients(bond, arp->ip_src);
  pr_debug("Server sent ARP Request packet\n");
 }

 return tx_slave;
}
