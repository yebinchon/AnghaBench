#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ocrdma_grh {int /*<<< orphan*/  tclass_flow; int /*<<< orphan*/  pdid_hoplimit; int /*<<< orphan*/ * dgid; } ;
struct ocrdma_eth_vlan {int dummy; } ;
struct ocrdma_eth_basic {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  vlan_tag; } ;
struct ocrdma_av {int valid; TYPE_1__ eth_hdr; } ;
struct ocrdma_ah {int /*<<< orphan*/  sgid_index; struct ocrdma_av* av; } ;
struct TYPE_5__ {int /*<<< orphan*/ * raw; } ;
struct TYPE_6__ {int hop_limit; int traffic_class; int flow_label; int /*<<< orphan*/  sgid_index; TYPE_2__ dgid; } ;
struct ib_ah_attr {int sl; TYPE_3__ grh; int /*<<< orphan*/  ah_flags; } ;
struct ib_ah {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  IB_AH_GRH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct ocrdma_ah* FUNC3 (struct ib_ah*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC5(struct ib_ah *ibah, struct ib_ah_attr *attr)
{
	struct ocrdma_ah *ah = FUNC3(ibah);
	struct ocrdma_av *av = ah->av;
	struct ocrdma_grh *grh;
	attr->ah_flags |= IB_AH_GRH;
	if (ah->av->valid & FUNC0(1)) {
		grh = (struct ocrdma_grh *)((u8 *)ah->av +
				sizeof(struct ocrdma_eth_vlan));
		attr->sl = FUNC1(av->eth_hdr.vlan_tag) >> 13;
	} else {
		grh = (struct ocrdma_grh *)((u8 *)ah->av +
					sizeof(struct ocrdma_eth_basic));
		attr->sl = 0;
	}
	FUNC4(&attr->grh.dgid.raw[0], &grh->dgid[0], sizeof(grh->dgid));
	attr->grh.sgid_index = ah->sgid_index;
	attr->grh.hop_limit = FUNC2(grh->pdid_hoplimit) & 0xff;
	attr->grh.traffic_class = FUNC2(grh->tclass_flow) >> 24;
	attr->grh.flow_label = FUNC2(grh->tclass_flow) & 0x00ffffffff;
	return 0;
}