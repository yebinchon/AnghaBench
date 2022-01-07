
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct be_adapter {int beacon_state; int hba_port_num; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;


 int BEACON_STATE_DISABLED ;
 int BEACON_STATE_ENABLED ;
 int EINVAL ;




 int be_cmd_get_beacon_state (struct be_adapter*,int ,int *) ;
 int be_cmd_set_beacon_state (struct be_adapter*,int ,int ,int ,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
be_set_phys_id(struct net_device *netdev,
        enum ethtool_phys_id_state state)
{
 struct be_adapter *adapter = netdev_priv(netdev);

 switch (state) {
 case 131:
  be_cmd_get_beacon_state(adapter, adapter->hba_port_num,
     &adapter->beacon_state);
  return -EINVAL;

 case 128:
  be_cmd_set_beacon_state(adapter, adapter->hba_port_num, 0, 0,
     BEACON_STATE_ENABLED);
  break;

 case 129:
  be_cmd_set_beacon_state(adapter, adapter->hba_port_num, 0, 0,
     BEACON_STATE_DISABLED);
  break;

 case 130:
  be_cmd_set_beacon_state(adapter, adapter->hba_port_num, 0, 0,
     adapter->beacon_state);
 }

 return 0;
}
