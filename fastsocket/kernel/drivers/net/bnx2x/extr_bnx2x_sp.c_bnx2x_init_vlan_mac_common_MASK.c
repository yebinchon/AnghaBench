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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct bnx2x_vlan_mac_obj {int /*<<< orphan*/  raw; int /*<<< orphan*/  wait; int /*<<< orphan*/  complete; int /*<<< orphan*/  restore; int /*<<< orphan*/  delete_all; struct bnx2x_credit_pool_obj* vlans_pool; struct bnx2x_credit_pool_obj* macs_pool; int /*<<< orphan*/  head; } ;
struct bnx2x_credit_pool_obj {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  bnx2x_obj_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bnx2x_complete_vlan_mac ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bnx2x_vlan_mac_del_all ; 
 int /*<<< orphan*/  bnx2x_vlan_mac_restore ; 
 int /*<<< orphan*/  bnx2x_wait_vlan_mac ; 

__attribute__((used)) static inline void FUNC2(struct bnx2x_vlan_mac_obj *o,
	u8 cl_id, u32 cid, u8 func_id, void *rdata, dma_addr_t rdata_mapping,
	int state, unsigned long *pstate, bnx2x_obj_type type,
	struct bnx2x_credit_pool_obj *macs_pool,
	struct bnx2x_credit_pool_obj *vlans_pool)
{
	FUNC0(&o->head);

	o->macs_pool = macs_pool;
	o->vlans_pool = vlans_pool;

	o->delete_all = bnx2x_vlan_mac_del_all;
	o->restore = bnx2x_vlan_mac_restore;
	o->complete = bnx2x_complete_vlan_mac;
	o->wait = bnx2x_wait_vlan_mac;

	FUNC1(&o->raw, cl_id, cid, func_id, rdata, rdata_mapping,
			   state, pstate, type);
}