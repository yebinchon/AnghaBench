
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct nes_device {struct nes_adapter* nesadapter; } ;
struct nes_adapter {scalar_t__ arp_table_size; int allocated_arps; TYPE_1__* arp_table; int next_arp_index; } ;
typedef int __be32 ;
struct TYPE_2__ {scalar_t__ ip_addr; int mac_addr; } ;


 int ETH_ALEN ;
 scalar_t__ NES_ARP_ADD ;
 scalar_t__ NES_ARP_DELETE ;
 scalar_t__ NES_ARP_RESOLVE ;
 int NES_DBG_NETDEV ;
 int NES_RESOURCE_ARP ;
 int cpu_to_be32 (scalar_t__) ;
 int memcpy (int ,int *,int ) ;
 int memset (int ,int,int ) ;
 int nes_alloc_resource (struct nes_adapter*,int ,int,scalar_t__*,int *,int ) ;
 int nes_debug (int ,char*,int,...) ;
 int nes_free_resource (struct nes_adapter*,int ,int) ;

int nes_arp_table(struct nes_device *nesdev, u32 ip_addr, u8 *mac_addr, u32 action)
{
 struct nes_adapter *nesadapter = nesdev->nesadapter;
 int arp_index;
 int err = 0;
 __be32 tmp_addr;

 for (arp_index = 0; (u32) arp_index < nesadapter->arp_table_size; arp_index++) {
  if (nesadapter->arp_table[arp_index].ip_addr == ip_addr)
   break;
 }

 if (action == NES_ARP_ADD) {
  if (arp_index != nesadapter->arp_table_size) {
   return -1;
  }

  arp_index = 0;
  err = nes_alloc_resource(nesadapter, nesadapter->allocated_arps,
    nesadapter->arp_table_size, (u32 *)&arp_index, &nesadapter->next_arp_index, NES_RESOURCE_ARP);
  if (err) {
   nes_debug(NES_DBG_NETDEV, "nes_alloc_resource returned error = %u\n", err);
   return err;
  }
  nes_debug(NES_DBG_NETDEV, "ADD, arp_index=%d\n", arp_index);

  nesadapter->arp_table[arp_index].ip_addr = ip_addr;
  memcpy(nesadapter->arp_table[arp_index].mac_addr, mac_addr, ETH_ALEN);
  return arp_index;
 }


 if (arp_index == nesadapter->arp_table_size) {
  tmp_addr = cpu_to_be32(ip_addr);
  nes_debug(NES_DBG_NETDEV, "MAC for %pI4 not in ARP table - cannot %s\n",
     &tmp_addr, action == NES_ARP_RESOLVE ? "resolve" : "delete");
  return -1;
 }

 if (action == NES_ARP_RESOLVE) {
  nes_debug(NES_DBG_NETDEV, "RESOLVE, arp_index=%d\n", arp_index);
  return arp_index;
 }

 if (action == NES_ARP_DELETE) {
  nes_debug(NES_DBG_NETDEV, "DELETE, arp_index=%d\n", arp_index);
  nesadapter->arp_table[arp_index].ip_addr = 0;
  memset(nesadapter->arp_table[arp_index].mac_addr, 0x00, ETH_ALEN);
  nes_free_resource(nesadapter, nesadapter->allocated_arps, arp_index);
  return arp_index;
 }

 return -1;
}
