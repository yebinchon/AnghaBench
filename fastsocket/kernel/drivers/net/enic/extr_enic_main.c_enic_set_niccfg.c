
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct enic {int devcmd_lock; } ;


 int enic_set_nic_cfg (struct enic*,int,int,int,int,int,int const,int const) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int enic_set_niccfg(struct enic *enic, u8 rss_default_cpu,
 u8 rss_hash_type, u8 rss_hash_bits, u8 rss_base_cpu, u8 rss_enable)
{
 const u8 tso_ipid_split_en = 0;
 const u8 ig_vlan_strip_en = 1;
 int err;




 spin_lock(&enic->devcmd_lock);
 err = enic_set_nic_cfg(enic,
  rss_default_cpu, rss_hash_type,
  rss_hash_bits, rss_base_cpu,
  rss_enable, tso_ipid_split_en,
  ig_vlan_strip_en);
 spin_unlock(&enic->devcmd_lock);

 return err;
}
