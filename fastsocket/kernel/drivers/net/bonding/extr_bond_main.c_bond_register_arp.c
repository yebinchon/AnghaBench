
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_type {int func; int dev; scalar_t__ type; } ;
struct bonding {int dev; struct packet_type arp_mon_pt; } ;


 int ETH_P_ARP ;
 int bond_arp_rcv ;
 int dev_add_pack (struct packet_type*) ;
 scalar_t__ htons (int ) ;

void bond_register_arp(struct bonding *bond)
{
 struct packet_type *pt = &bond->arp_mon_pt;

 if (pt->type)
  return;

 pt->type = htons(ETH_P_ARP);
 pt->dev = bond->dev;
 pt->func = bond_arp_rcv;
 dev_add_pack(pt);
}
