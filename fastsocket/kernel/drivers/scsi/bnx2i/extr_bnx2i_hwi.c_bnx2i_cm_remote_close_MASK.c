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
struct cnic_sock {scalar_t__ context; } ;
struct bnx2i_endpoint {scalar_t__ conn; int /*<<< orphan*/  hba; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EP_STATE_TCP_FIN_RCVD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct cnic_sock *cm_sk)
{
	struct bnx2i_endpoint *ep = (struct bnx2i_endpoint *) cm_sk->context;

	ep->state = EP_STATE_TCP_FIN_RCVD;
	if (ep->conn)
		FUNC0(ep->hba, ep->conn);
}