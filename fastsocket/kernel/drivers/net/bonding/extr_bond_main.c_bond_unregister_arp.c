
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_type {scalar_t__ type; } ;
struct bonding {struct packet_type arp_mon_pt; } ;


 int dev_remove_pack (struct packet_type*) ;

void bond_unregister_arp(struct bonding *bond)
{
 struct packet_type *pt = &bond->arp_mon_pt;

 dev_remove_pack(pt);
 pt->type = 0;
}
