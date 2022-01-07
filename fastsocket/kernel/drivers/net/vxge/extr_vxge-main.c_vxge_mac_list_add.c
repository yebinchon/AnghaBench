
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct vxge_vpath {scalar_t__ mac_addr_cnt; int mcast_addr_cnt; int mac_addr_list; } ;
struct vxge_mac_addrs {int state; int macaddr; int item; } ;
struct macInfo {int* macaddr; int state; } ;


 int ETH_ALEN ;
 int FALSE ;
 int GFP_ATOMIC ;
 int TRUE ;
 int VXGE_DRIVER_NAME ;
 int VXGE_ERR ;
 scalar_t__ VXGE_MAX_LEARN_MAC_ADDR_CNT ;
 struct vxge_mac_addrs* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int *,int*,int ) ;
 int vxge_debug_mem (int ,char*,int ) ;

int vxge_mac_list_add(struct vxge_vpath *vpath, struct macInfo *mac)
{
 struct vxge_mac_addrs *new_mac_entry;
 u8 *mac_address = ((void*)0);

 if (vpath->mac_addr_cnt >= VXGE_MAX_LEARN_MAC_ADDR_CNT)
  return TRUE;

 new_mac_entry = kzalloc(sizeof(struct vxge_mac_addrs), GFP_ATOMIC);
 if (!new_mac_entry) {
  vxge_debug_mem(VXGE_ERR,
   "%s: memory allocation failed",
   VXGE_DRIVER_NAME);
  return FALSE;
 }

 list_add(&new_mac_entry->item, &vpath->mac_addr_list);


 mac_address = (u8 *)&new_mac_entry->macaddr;
 memcpy(mac_address, mac->macaddr, ETH_ALEN);

 new_mac_entry->state = mac->state;
 vpath->mac_addr_cnt++;


 if (0x01 & mac->macaddr[0])
  vpath->mcast_addr_cnt++;

 return TRUE;
}
