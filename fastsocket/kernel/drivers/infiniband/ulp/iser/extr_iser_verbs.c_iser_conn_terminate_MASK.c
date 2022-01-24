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
struct iser_conn {scalar_t__ state; int /*<<< orphan*/  wait; int /*<<< orphan*/  cma_id; } ;

/* Variables and functions */
 scalar_t__ ISER_CONN_DOWN ; 
 int /*<<< orphan*/  ISER_CONN_TERMINATING ; 
 int /*<<< orphan*/  ISER_CONN_UP ; 
 int /*<<< orphan*/  FUNC0 (struct iser_conn*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iser_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct iser_conn*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

void FUNC5(struct iser_conn *ib_conn)
{
	int err = 0;

	/* change the ib conn state only if the conn is UP, however always call
	 * rdma_disconnect since this is the only way to cause the CMA to change
	 * the QP state to ERROR
	 */

	FUNC1(ib_conn, ISER_CONN_UP, ISER_CONN_TERMINATING);
	err = FUNC3(ib_conn->cma_id);
	if (err)
		FUNC2("Failed to disconnect, conn: 0x%p err %d\n",
			 ib_conn,err);

	FUNC4(ib_conn->wait,
				 ib_conn->state == ISER_CONN_DOWN);

	FUNC0(ib_conn, 1); /* deref ib conn deallocate */
}