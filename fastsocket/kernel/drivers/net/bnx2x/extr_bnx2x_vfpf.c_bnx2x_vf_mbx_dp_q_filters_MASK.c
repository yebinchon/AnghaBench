#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vfpf_set_q_filters_tlv {int flags; int n_mac_vlan_filters; int n_multicast; int /*<<< orphan*/ * multicast; int /*<<< orphan*/  rx_mask; int /*<<< orphan*/ * filters; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED ; 
 int VFPF_SET_Q_FILTERS_MULTICAST_CHANGED ; 
 int VFPF_SET_Q_FILTERS_RX_MASK_CHANGED ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct bnx2x *bp, int msglvl,
				       struct vfpf_set_q_filters_tlv *filters)
{
	int i;

	if (filters->flags & VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED)
		for (i = 0; i < filters->n_mac_vlan_filters; i++)
			FUNC1(bp, msglvl, i,
						 &filters->filters[i]);

	if (filters->flags & VFPF_SET_Q_FILTERS_RX_MASK_CHANGED)
		FUNC0(msglvl, "RX-MASK=0x%x\n", filters->rx_mask);

	if (filters->flags & VFPF_SET_Q_FILTERS_MULTICAST_CHANGED)
		for (i = 0; i < filters->n_multicast; i++)
			FUNC0(msglvl, "MULTICAST=%pM\n", filters->multicast[i]);
}