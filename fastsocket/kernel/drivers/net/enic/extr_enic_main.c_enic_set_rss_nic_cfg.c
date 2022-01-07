
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct enic {int rq_count; } ;
struct device {int dummy; } ;


 scalar_t__ ENIC_SETTING (struct enic*,int ) ;
 int NIC_CFG_RSS_HASH_TYPE_IPV4 ;
 int NIC_CFG_RSS_HASH_TYPE_IPV6 ;
 int NIC_CFG_RSS_HASH_TYPE_TCP_IPV4 ;
 int NIC_CFG_RSS_HASH_TYPE_TCP_IPV6 ;
 int RSS ;
 int dev_warn (struct device*,char*) ;
 struct device* enic_get_dev (struct enic*) ;
 int enic_set_niccfg (struct enic*,int const,int const,int const,int const,int) ;
 scalar_t__ enic_set_rsscpu (struct enic*,int const) ;
 int enic_set_rsskey (struct enic*) ;

__attribute__((used)) static int enic_set_rss_nic_cfg(struct enic *enic)
{
 struct device *dev = enic_get_dev(enic);
 const u8 rss_default_cpu = 0;
 const u8 rss_hash_type = NIC_CFG_RSS_HASH_TYPE_IPV4 |
  NIC_CFG_RSS_HASH_TYPE_TCP_IPV4 |
  NIC_CFG_RSS_HASH_TYPE_IPV6 |
  NIC_CFG_RSS_HASH_TYPE_TCP_IPV6;
 const u8 rss_hash_bits = 7;
 const u8 rss_base_cpu = 0;
 u8 rss_enable = ENIC_SETTING(enic, RSS) && (enic->rq_count > 1);

 if (rss_enable) {
  if (!enic_set_rsskey(enic)) {
   if (enic_set_rsscpu(enic, rss_hash_bits)) {
    rss_enable = 0;
    dev_warn(dev, "RSS disabled, "
     "Failed to set RSS cpu indirection table.");
   }
  } else {
   rss_enable = 0;
   dev_warn(dev, "RSS disabled, Failed to set RSS key.\n");
  }
 }

 return enic_set_niccfg(enic, rss_default_cpu, rss_hash_type,
  rss_hash_bits, rss_base_cpu, rss_enable);
}
