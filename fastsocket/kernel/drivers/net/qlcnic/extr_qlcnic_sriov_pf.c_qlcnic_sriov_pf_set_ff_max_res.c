
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_resources {int max_local_ipv6_addrs; int max_remote_ipv6_addrs; int num_rx_status_rings; int num_rx_buf_rings; int num_destip; int num_lro_flows_supported; int num_tx_queues; int num_rx_queues; int num_txvlan_keys; int num_rx_mcast_mac_filters; int num_rx_ucast_mac_filters; int num_tx_mac_filters; } ;
struct qlcnic_info {int max_local_ipv6_addrs; int max_remote_ipv6_addrs; int max_rx_status_rings; int max_rx_buf_rings; int max_rx_ip_addr; int max_rx_lro_flow; int max_tx_ques; int max_rx_ques; int max_tx_vlan_keys; int max_rx_mcast_mac_filters; int max_rx_ucast_mac_filters; int max_tx_mac_filters; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* sriov; } ;
struct TYPE_3__ {struct qlcnic_resources ff_max; } ;



__attribute__((used)) static void qlcnic_sriov_pf_set_ff_max_res(struct qlcnic_adapter *adapter,
        struct qlcnic_info *info)
{
 struct qlcnic_resources *ff_max = &adapter->ahw->sriov->ff_max;

 ff_max->num_tx_mac_filters = info->max_tx_mac_filters;
 ff_max->num_rx_ucast_mac_filters = info->max_rx_ucast_mac_filters;
 ff_max->num_rx_mcast_mac_filters = info->max_rx_mcast_mac_filters;
 ff_max->num_txvlan_keys = info->max_tx_vlan_keys;
 ff_max->num_rx_queues = info->max_rx_ques;
 ff_max->num_tx_queues = info->max_tx_ques;
 ff_max->num_lro_flows_supported = info->max_rx_lro_flow;
 ff_max->num_destip = info->max_rx_ip_addr;
 ff_max->num_rx_buf_rings = info->max_rx_buf_rings;
 ff_max->num_rx_status_rings = info->max_rx_status_rings;
 ff_max->max_remote_ipv6_addrs = info->max_remote_ipv6_addrs;
 ff_max->max_local_ipv6_addrs = info->max_local_ipv6_addrs;
}
