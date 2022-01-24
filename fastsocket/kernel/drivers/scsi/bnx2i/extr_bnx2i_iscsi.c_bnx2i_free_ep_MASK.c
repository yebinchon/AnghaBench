#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct iscsi_endpoint {struct bnx2i_endpoint* dd_data; } ;
struct bnx2i_endpoint {scalar_t__ ep_iscsi_cid; TYPE_2__* hba; TYPE_1__* conn; int /*<<< orphan*/  state; } ;
struct TYPE_4__ {int /*<<< orphan*/  ofld_conns_active; } ;
struct TYPE_3__ {int /*<<< orphan*/ * ep; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  bnx2i_resc_lock ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct iscsi_endpoint *ep)
{
	struct bnx2i_endpoint *bnx2i_ep = ep->dd_data;
	unsigned long flags;

	FUNC2(&bnx2i_resc_lock, flags);
	bnx2i_ep->state = EP_STATE_IDLE;
	bnx2i_ep->hba->ofld_conns_active--;

	if (bnx2i_ep->ep_iscsi_cid != (u16) -1)
		FUNC0(bnx2i_ep->hba, bnx2i_ep->ep_iscsi_cid);

	if (bnx2i_ep->conn) {
		bnx2i_ep->conn->ep = NULL;
		bnx2i_ep->conn = NULL;
	}

	bnx2i_ep->hba = NULL;
	FUNC3(&bnx2i_resc_lock, flags);
	FUNC1(ep);
}