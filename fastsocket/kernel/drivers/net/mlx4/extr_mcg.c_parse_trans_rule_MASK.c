#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  src_port_msk; int /*<<< orphan*/  src_port; int /*<<< orphan*/  dst_port_msk; int /*<<< orphan*/  dst_port; } ;
struct TYPE_14__ {int /*<<< orphan*/  dst_ip_msk; int /*<<< orphan*/  dst_ip; int /*<<< orphan*/  src_ip_msk; int /*<<< orphan*/  src_ip; } ;
struct TYPE_12__ {int /*<<< orphan*/  dst_gid_msk; int /*<<< orphan*/  dst_gid; int /*<<< orphan*/  qpn_msk; int /*<<< orphan*/  l3_qpn; } ;
struct TYPE_10__ {int /*<<< orphan*/  vlan_id_msk; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  ether_type; int /*<<< orphan*/  ether_type_enable; int /*<<< orphan*/ * src_mac_msk; int /*<<< orphan*/ * src_mac; int /*<<< orphan*/ * dst_mac_msk; int /*<<< orphan*/ * dst_mac; } ;
struct mlx4_spec_list {size_t id; TYPE_8__ tcp_udp; TYPE_6__ ipv4; TYPE_4__ ib; TYPE_2__ eth; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  src_port_msk; int /*<<< orphan*/  src_port; int /*<<< orphan*/  dst_port_msk; int /*<<< orphan*/  dst_port; } ;
struct TYPE_13__ {int /*<<< orphan*/  dst_ip_msk; int /*<<< orphan*/  dst_ip; int /*<<< orphan*/  src_ip_msk; int /*<<< orphan*/  src_ip; } ;
struct TYPE_11__ {int /*<<< orphan*/  dst_gid_msk; int /*<<< orphan*/  dst_gid; int /*<<< orphan*/  qpn_mask; int /*<<< orphan*/  l3_qpn; } ;
struct TYPE_9__ {int ether_type_enable; int /*<<< orphan*/  vlan_tag_msk; int /*<<< orphan*/  vlan_tag; int /*<<< orphan*/  ether_type; int /*<<< orphan*/ * src_mac_msk; int /*<<< orphan*/ * src_mac; int /*<<< orphan*/ * dst_mac_msk; int /*<<< orphan*/ * dst_mac; } ;
struct _rule_hw {int size; TYPE_7__ tcp_udp; TYPE_5__ ipv4; TYPE_3__ ib; TYPE_1__ eth; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int ETH_ALEN ; 
#define  MLX4_NET_TRANS_RULE_ID_ETH 133 
#define  MLX4_NET_TRANS_RULE_ID_IB 132 
#define  MLX4_NET_TRANS_RULE_ID_IPV4 131 
#define  MLX4_NET_TRANS_RULE_ID_IPV6 130 
#define  MLX4_NET_TRANS_RULE_ID_TCP 129 
#define  MLX4_NET_TRANS_RULE_ID_UDP 128 
 int* __rule_hw_sz ; 
 int /*<<< orphan*/ * __sw_id_hw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct _rule_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlx4_dev*,size_t) ; 

__attribute__((used)) static int FUNC4(struct mlx4_dev *dev, struct mlx4_spec_list *spec,
			    struct _rule_hw *rule_hw)
{
	if (FUNC3(dev, spec->id) < 0)
		return -EINVAL;
	FUNC2(rule_hw, 0, FUNC3(dev, spec->id));
	rule_hw->id = FUNC0(__sw_id_hw[spec->id]);
	rule_hw->size = FUNC3(dev, spec->id) >> 2;

	switch (spec->id) {
	case MLX4_NET_TRANS_RULE_ID_ETH:
		FUNC1(rule_hw->eth.dst_mac, spec->eth.dst_mac, ETH_ALEN);
		FUNC1(rule_hw->eth.dst_mac_msk, spec->eth.dst_mac_msk,
		       ETH_ALEN);
		FUNC1(rule_hw->eth.src_mac, spec->eth.src_mac, ETH_ALEN);
		FUNC1(rule_hw->eth.src_mac_msk, spec->eth.src_mac_msk,
		       ETH_ALEN);
		if (spec->eth.ether_type_enable) {
			rule_hw->eth.ether_type_enable = 1;
			rule_hw->eth.ether_type = spec->eth.ether_type;
		}
		rule_hw->eth.vlan_tag = spec->eth.vlan_id;
		rule_hw->eth.vlan_tag_msk = spec->eth.vlan_id_msk;
		break;

	case MLX4_NET_TRANS_RULE_ID_IB:
		rule_hw->ib.l3_qpn = spec->ib.l3_qpn;
		rule_hw->ib.qpn_mask = spec->ib.qpn_msk;
		FUNC1(&rule_hw->ib.dst_gid, &spec->ib.dst_gid, 16);
		FUNC1(&rule_hw->ib.dst_gid_msk, &spec->ib.dst_gid_msk, 16);
		break;

	case MLX4_NET_TRANS_RULE_ID_IPV6:
		return -EOPNOTSUPP;

	case MLX4_NET_TRANS_RULE_ID_IPV4:
		rule_hw->ipv4.src_ip = spec->ipv4.src_ip;
		rule_hw->ipv4.src_ip_msk = spec->ipv4.src_ip_msk;
		rule_hw->ipv4.dst_ip = spec->ipv4.dst_ip;
		rule_hw->ipv4.dst_ip_msk = spec->ipv4.dst_ip_msk;
		break;

	case MLX4_NET_TRANS_RULE_ID_TCP:
	case MLX4_NET_TRANS_RULE_ID_UDP:
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