
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nv_ethtool_str {int dummy; } ;
struct net_device {int dummy; } ;




 int memcpy (int *,int *,int) ;
 int nv_estats_str ;
 int nv_etests_str ;
 int nv_get_sset_count (struct net_device*,int const) ;

__attribute__((used)) static void nv_get_strings(struct net_device *dev, u32 stringset, u8 *buffer)
{
 switch (stringset) {
 case 129:
  memcpy(buffer, &nv_estats_str, nv_get_sset_count(dev, 129)*sizeof(struct nv_ethtool_str));
  break;
 case 128:
  memcpy(buffer, &nv_etests_str, nv_get_sset_count(dev, 128)*sizeof(struct nv_ethtool_str));
  break;
 }
}
