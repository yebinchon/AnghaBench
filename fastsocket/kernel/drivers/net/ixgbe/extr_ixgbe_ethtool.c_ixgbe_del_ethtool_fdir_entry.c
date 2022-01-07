
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int fdir_perfect_lock; } ;
struct ethtool_rxnfc {int fs; } ;
struct ethtool_rx_flow_spec {int location; } ;


 int ixgbe_update_ethtool_fdir_entry (struct ixgbe_adapter*,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ixgbe_del_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
     struct ethtool_rxnfc *cmd)
{
 struct ethtool_rx_flow_spec *fsp =
  (struct ethtool_rx_flow_spec *)&cmd->fs;
 int err;

 spin_lock(&adapter->fdir_perfect_lock);
 err = ixgbe_update_ethtool_fdir_entry(adapter, ((void*)0), fsp->location);
 spin_unlock(&adapter->fdir_perfect_lock);

 return err;
}
