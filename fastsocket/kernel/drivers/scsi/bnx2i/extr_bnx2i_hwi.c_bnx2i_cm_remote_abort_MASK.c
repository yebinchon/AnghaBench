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
typedef  scalar_t__ u32 ;
struct cnic_sock {scalar_t__ context; } ;
struct bnx2i_endpoint {scalar_t__ state; scalar_t__ conn; int /*<<< orphan*/  hba; int /*<<< orphan*/  ofld_wait; } ;

/* Variables and functions */
 scalar_t__ EP_STATE_DISCONN_START ; 
 scalar_t__ EP_STATE_TCP_RST_RCVD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct cnic_sock *cm_sk)
{
	struct bnx2i_endpoint *ep = (struct bnx2i_endpoint *) cm_sk->context;
	u32 old_state = ep->state;

	ep->state = EP_STATE_TCP_RST_RCVD;
	if (old_state == EP_STATE_DISCONN_START)
		FUNC1(&ep->ofld_wait);
	else
		if (ep->conn)
			FUNC0(ep->hba, ep->conn);
}