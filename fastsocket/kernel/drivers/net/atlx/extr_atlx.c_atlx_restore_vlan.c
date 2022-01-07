
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atlx_adapter {int vlgrp; int netdev; } ;


 int atlx_vlan_rx_register (int ,int ) ;

__attribute__((used)) static void atlx_restore_vlan(struct atlx_adapter *adapter)
{
 atlx_vlan_rx_register(adapter->netdev, adapter->vlgrp);
}
