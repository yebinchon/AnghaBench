
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int src_port_msk; int src_port; int dst_port_msk; int dst_port; } ;
struct TYPE_14__ {int dst_ip_msk; int dst_ip; int src_ip_msk; int src_ip; } ;
struct TYPE_12__ {int dst_gid_msk; int dst_gid; int qpn_msk; int l3_qpn; } ;
struct TYPE_10__ {int vlan_id_msk; int vlan_id; int ether_type; int ether_type_enable; int * src_mac_msk; int * src_mac; int * dst_mac_msk; int * dst_mac; } ;
struct mlx4_spec_list {size_t id; TYPE_8__ tcp_udp; TYPE_6__ ipv4; TYPE_4__ ib; TYPE_2__ eth; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_15__ {int src_port_msk; int src_port; int dst_port_msk; int dst_port; } ;
struct TYPE_13__ {int dst_ip_msk; int dst_ip; int src_ip_msk; int src_ip; } ;
struct TYPE_11__ {int dst_gid_msk; int dst_gid; int qpn_mask; int l3_qpn; } ;
struct TYPE_9__ {int ether_type_enable; int vlan_tag_msk; int vlan_tag; int ether_type; int * src_mac_msk; int * src_mac; int * dst_mac_msk; int * dst_mac; } ;
struct _rule_hw {int size; TYPE_7__ tcp_udp; TYPE_5__ ipv4; TYPE_3__ ib; TYPE_1__ eth; int id; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;






 int* __rule_hw_sz ;
 int * __sw_id_hw ;
 int cpu_to_be16 (int ) ;
 int memcpy (int *,int *,int) ;
 int memset (struct _rule_hw*,int ,int) ;
 int mlx4_hw_rule_sz (struct mlx4_dev*,size_t) ;

__attribute__((used)) static int parse_trans_rule(struct mlx4_dev *dev, struct mlx4_spec_list *spec,
       struct _rule_hw *rule_hw)
{
 if (mlx4_hw_rule_sz(dev, spec->id) < 0)
  return -EINVAL;
 memset(rule_hw, 0, mlx4_hw_rule_sz(dev, spec->id));
 rule_hw->id = cpu_to_be16(__sw_id_hw[spec->id]);
 rule_hw->size = mlx4_hw_rule_sz(dev, spec->id) >> 2;

 switch (spec->id) {
 case 133:
  memcpy(rule_hw->eth.dst_mac, spec->eth.dst_mac, ETH_ALEN);
  memcpy(rule_hw->eth.dst_mac_msk, spec->eth.dst_mac_msk,
         ETH_ALEN);
  memcpy(rule_hw->eth.src_mac, spec->eth.src_mac, ETH_ALEN);
  memcpy(rule_hw->eth.src_mac_msk, spec->eth.src_mac_msk,
         ETH_ALEN);
  if (spec->eth.ether_type_enable) {
   rule_hw->eth.ether_type_enable = 1;
   rule_hw->eth.ether_type = spec->eth.ether_type;
  }
  rule_hw->eth.vlan_tag = spec->eth.vlan_id;
  rule_hw->eth.vlan_tag_msk = spec->eth.vlan_id_msk;
  break;

 case 132:
  rule_hw->ib.l3_qpn = spec->ib.l3_qpn;
  rule_hw->ib.qpn_mask = spec->ib.qpn_msk;
  memcpy(&rule_hw->ib.dst_gid, &spec->ib.dst_gid, 16);
  memcpy(&rule_hw->ib.dst_gid_msk, &spec->ib.dst_gid_msk, 16);
  break;

 case 130:
  return -EOPNOTSUPP;

 case 131:
  rule_hw->ipv4.src_ip = spec->ipv4.src_ip;
  rule_hw->ipv4.src_ip_msk = spec->ipv4.src_ip_msk;
  rule_hw->ipv4.dst_ip = spec->ipv4.dst_ip;
  rule_hw->ipv4.dst_ip_msk = spec->ipv4.dst_ip_msk;
  break;

 case 129:
 case 128:
  rule_hw->tcp_udp.dst_port = spec->tcp_udp.dst_port;
  rule_hw->tcp_udp.dst_port_msk = spec->tcp_udp.dst_port_msk;
  rule_hw->tcp_udp.src_port = spec->tcp_udp.src_port;
  rule_hw->tcp_udp.src_port_msk = spec->tcp_udp.src_port_msk;
  break;

 default:
  return -EINVAL;
 }

 return __rule_hw_sz[spec->id];
}
