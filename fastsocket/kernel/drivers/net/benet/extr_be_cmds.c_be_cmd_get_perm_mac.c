
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct be_adapter {int if_handle; } ;


 scalar_t__ BEx_chip (struct be_adapter*) ;
 int ETH_ALEN ;
 int be_cmd_get_mac_from_list (struct be_adapter*,int *,int*,int *,int ) ;
 int be_cmd_mac_addr_query (struct be_adapter*,int *,int,int ,int ) ;
 scalar_t__ be_physfn (struct be_adapter*) ;
 int memset (int *,int ,int ) ;

int be_cmd_get_perm_mac(struct be_adapter *adapter, u8 *mac)
{
 int status;
 bool pmac_valid = 0;

 memset(mac, 0, ETH_ALEN);

 if (BEx_chip(adapter)) {
  if (be_physfn(adapter))
   status = be_cmd_mac_addr_query(adapter, mac, 1, 0,
             0);
  else
   status = be_cmd_mac_addr_query(adapter, mac, 0,
             adapter->if_handle, 0);
 } else {
  status = be_cmd_get_mac_from_list(adapter, mac, &pmac_valid,
        ((void*)0), 0);
 }

 return status;
}
