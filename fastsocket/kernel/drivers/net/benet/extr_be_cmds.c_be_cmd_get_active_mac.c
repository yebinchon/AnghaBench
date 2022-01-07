
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct be_adapter {int if_handle; } ;


 scalar_t__ BEx_chip (struct be_adapter*) ;
 int be_cmd_get_mac_from_list (struct be_adapter*,int *,int*,int *,int ) ;
 int be_cmd_mac_addr_query (struct be_adapter*,int *,int,int ,int ) ;

int be_cmd_get_active_mac(struct be_adapter *adapter, u32 curr_pmac_id, u8 *mac)
{
 bool active = 1;

 if (BEx_chip(adapter))
  return be_cmd_mac_addr_query(adapter, mac, 0,
          adapter->if_handle, curr_pmac_id);
 else

  return be_cmd_get_mac_from_list(adapter, mac, &active,
      &curr_pmac_id, 0);
}
