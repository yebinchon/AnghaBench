
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mlx4_spec_list {int dummy; } ;
struct mlx4_en_priv {TYPE_3__* dev; } ;
struct list_head {int dummy; } ;
struct TYPE_4__ {int h_dest; } ;
struct TYPE_5__ {int flow_type; TYPE_1__ h_ext; } ;
struct ethtool_rxnfc {TYPE_2__ fs; } ;
typedef int __be32 ;
struct TYPE_6__ {int dev_addr; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int FLOW_MAC_EXT ;
 int ip_eth_mc_map (int ,unsigned char*) ;
 int ipv4_is_multicast (int ) ;
 int memcpy (unsigned char**,int ,int) ;
 int mlx4_en_ethtool_add_mac_rule (struct ethtool_rxnfc*,struct list_head*,struct mlx4_spec_list*,unsigned char*) ;

__attribute__((used)) static int mlx4_en_ethtool_add_mac_rule_by_ipv4(struct mlx4_en_priv *priv,
      struct ethtool_rxnfc *cmd,
      struct list_head *rule_list_h,
      struct mlx4_spec_list *spec_l2,
      __be32 ipv4_dst)
{
 return -EINVAL;

}
