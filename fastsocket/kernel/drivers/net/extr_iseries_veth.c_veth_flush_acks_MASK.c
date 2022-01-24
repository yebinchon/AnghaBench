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
struct veth_lpar_connection {int /*<<< orphan*/  pending_acks; scalar_t__ num_pending_acks; int /*<<< orphan*/  remote_lp; } ;
typedef  scalar_t__ HvLpEvent_Rc ;

/* Variables and functions */
 scalar_t__ HvLpEvent_Rc_Good ; 
 int /*<<< orphan*/  VETH_EVENT_FRAMES_ACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct veth_lpar_connection*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct veth_lpar_connection *cnx)
{
	HvLpEvent_Rc rc;

	rc = FUNC2(cnx, VETH_EVENT_FRAMES_ACK,
			     0, &cnx->pending_acks);

	if (rc != HvLpEvent_Rc_Good)
		FUNC1("Failed acking frames from LPAR %d, rc = %d\n",
				cnx->remote_lp, (int)rc);

	cnx->num_pending_acks = 0;
	FUNC0(&cnx->pending_acks, 0xff, sizeof(cnx->pending_acks));
}