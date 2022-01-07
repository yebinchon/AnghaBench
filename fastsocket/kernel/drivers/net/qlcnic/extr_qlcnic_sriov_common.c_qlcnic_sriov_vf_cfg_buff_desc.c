
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int max_rds_rings; int num_txd; int max_jumbo_rxd; int num_jumbo_rxd; int max_rxd; int num_rxd; } ;


 int MAX_CMD_DESCRIPTORS ;
 int MAX_JUMBO_RCV_DESCRIPTORS_10G ;
 int MAX_RCV_DESCRIPTORS_10G ;
 int MAX_RDS_RINGS ;
 int QLC_DEFAULT_JUMBO_RCV_DESCRIPTORS_SRIOV_VF ;
 int QLC_DEFAULT_RCV_DESCRIPTORS_SRIOV_VF ;

__attribute__((used)) static void qlcnic_sriov_vf_cfg_buff_desc(struct qlcnic_adapter *adapter)
{
 adapter->num_rxd = QLC_DEFAULT_RCV_DESCRIPTORS_SRIOV_VF;
 adapter->max_rxd = MAX_RCV_DESCRIPTORS_10G;
 adapter->num_jumbo_rxd = QLC_DEFAULT_JUMBO_RCV_DESCRIPTORS_SRIOV_VF;
 adapter->max_jumbo_rxd = MAX_JUMBO_RCV_DESCRIPTORS_10G;
 adapter->num_txd = MAX_CMD_DESCRIPTORS;
 adapter->max_rds_rings = MAX_RDS_RINGS;
}
