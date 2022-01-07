
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ts_info {int so_timestamping; int phc_index; } ;
struct efx_nic {int dummy; } ;


 int SOF_TIMESTAMPING_RX_SOFTWARE ;
 int SOF_TIMESTAMPING_SOFTWARE ;
 int efx_ptp_get_ts_info (struct efx_nic*,struct ethtool_ts_info*) ;
 struct efx_nic* netdev_priv (struct net_device*) ;

int efx_ethtool_get_ts_info(struct net_device *net_dev,
       struct ethtool_ts_info *ts_info)
{
 struct efx_nic *efx = netdev_priv(net_dev);


 ts_info->so_timestamping = (SOF_TIMESTAMPING_RX_SOFTWARE |
        SOF_TIMESTAMPING_SOFTWARE);
 ts_info->phc_index = -1;

 efx_ptp_get_ts_info(efx, ts_info);
 return 0;
}
