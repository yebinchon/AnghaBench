#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct mlx4_ib_dev {struct mlx4_dev* dev; } ;
struct ib_ah {int dummy; } ;
struct TYPE_12__ {int stat_rate; void* sl_tclass_flowlabel; int /*<<< orphan*/  dgid; void* vlan; int /*<<< orphan*/  gid_index; void* port_pd; int /*<<< orphan*/  mac; } ;
struct TYPE_9__ {void* dlid; } ;
struct TYPE_13__ {TYPE_5__ eth; TYPE_2__ ib; } ;
struct mlx4_ib_ah {struct ib_ah ibah; TYPE_6__ av; } ;
struct TYPE_8__ {int stat_rate_support; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_10__ {int /*<<< orphan*/ * raw; } ;
struct TYPE_11__ {TYPE_3__ dgid; int /*<<< orphan*/  sgid_index; } ;
struct ib_ah_attr {int port_num; int sl; int static_rate; TYPE_4__ grh; } ;
struct TYPE_14__ {int pdn; } ;

/* Variables and functions */
 struct ib_ah* FUNC0 (int) ; 
 int IB_RATE_2_5_GBPS ; 
 int MLX4_STAT_RATE_OFFSET ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,union ib_gid*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct mlx4_ib_dev*,struct ib_ah_attr*,int /*<<< orphan*/ *,int*,int) ; 
 int FUNC6 (union ib_gid*) ; 
 struct mlx4_ib_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC8 (struct ib_pd*) ; 

__attribute__((used)) static struct ib_ah *FUNC9(struct ib_pd *pd, struct ib_ah_attr *ah_attr,
				    struct mlx4_ib_ah *ah)
{
	struct mlx4_ib_dev *ibdev = FUNC7(pd->device);
	struct mlx4_dev *dev = ibdev->dev;
	union ib_gid sgid;
	u8 mac[6];
	int err;
	int is_mcast;
	u16 vlan_tag;

	err = FUNC5(ibdev, ah_attr, mac, &is_mcast, ah_attr->port_num);
	if (err)
		return FUNC0(err);

	FUNC4(ah->av.eth.mac, mac, 6);
	err = FUNC3(pd->device, ah_attr->port_num, ah_attr->grh.sgid_index, &sgid);
	if (err)
		return FUNC0(err);
	vlan_tag = FUNC6(&sgid);
	if (vlan_tag < 0x1000)
		vlan_tag |= (ah_attr->sl & 7) << 13;
	ah->av.eth.port_pd = FUNC2(FUNC8(pd)->pdn | (ah_attr->port_num << 24));
	ah->av.eth.gid_index = ah_attr->grh.sgid_index;
	ah->av.eth.vlan = FUNC1(vlan_tag);
	if (ah_attr->static_rate) {
		ah->av.eth.stat_rate = ah_attr->static_rate + MLX4_STAT_RATE_OFFSET;
		while (ah->av.eth.stat_rate > IB_RATE_2_5_GBPS + MLX4_STAT_RATE_OFFSET &&
		       !(1 << ah->av.eth.stat_rate & dev->caps.stat_rate_support))
			--ah->av.eth.stat_rate;
	}

	/*
	 * HW requires multicast LID so we just choose one.
	 */
	if (is_mcast)
		ah->av.ib.dlid = FUNC1(0xc000);

	FUNC4(ah->av.eth.dgid, ah_attr->grh.dgid.raw, 16);
	ah->av.eth.sl_tclass_flowlabel = FUNC2(ah_attr->sl << 29);

	return &ah->ibah;
}