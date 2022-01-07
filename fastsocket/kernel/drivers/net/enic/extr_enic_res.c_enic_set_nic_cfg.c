
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct enic {int vdev; } ;


 int CMD_NIC_CFG ;
 int vnic_dev_cmd (int ,int ,scalar_t__*,scalar_t__*,int) ;
 int vnic_set_nic_cfg (scalar_t__*,int ,int ,int ,int ,int ,int ,int ) ;

int enic_set_nic_cfg(struct enic *enic, u8 rss_default_cpu, u8 rss_hash_type,
 u8 rss_hash_bits, u8 rss_base_cpu, u8 rss_enable, u8 tso_ipid_split_en,
 u8 ig_vlan_strip_en)
{
 u64 a0, a1;
 u32 nic_cfg;
 int wait = 1000;

 vnic_set_nic_cfg(&nic_cfg, rss_default_cpu,
  rss_hash_type, rss_hash_bits, rss_base_cpu,
  rss_enable, tso_ipid_split_en, ig_vlan_strip_en);

 a0 = nic_cfg;
 a1 = 0;

 return vnic_dev_cmd(enic->vdev, CMD_NIC_CFG, &a0, &a1, wait);
}
