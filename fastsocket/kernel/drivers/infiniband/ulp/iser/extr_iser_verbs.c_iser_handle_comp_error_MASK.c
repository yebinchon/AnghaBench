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
struct iser_tx_desc {scalar_t__ type; } ;
struct iser_conn {scalar_t__ post_recv_buf_count; int /*<<< orphan*/  wait; int /*<<< orphan*/  state; TYPE_1__* iser_conn; int /*<<< orphan*/  post_send_buf_count; } ;
struct TYPE_4__ {int /*<<< orphan*/  desc_cache; } ;
struct TYPE_3__ {int /*<<< orphan*/  iscsi_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_ERR_CONN_FAILED ; 
 scalar_t__ ISCSI_TX_DATAOUT ; 
 int /*<<< orphan*/  ISER_CONN_DOWN ; 
 int /*<<< orphan*/  ISER_CONN_TERMINATING ; 
 int /*<<< orphan*/  ISER_CONN_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__ ig ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct iser_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct iser_tx_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iser_tx_desc *desc,
				struct iser_conn *ib_conn)
{
	if (desc && desc->type == ISCSI_TX_DATAOUT)
		FUNC3(ig.desc_cache, desc);

	if (ib_conn->post_recv_buf_count == 0 &&
	    FUNC0(&ib_conn->post_send_buf_count) == 0) {
		/* getting here when the state is UP means that the conn is *
		 * being terminated asynchronously from the iSCSI layer's   *
		 * perspective.                                             */
		if (FUNC2(ib_conn, ISER_CONN_UP,
		    ISER_CONN_TERMINATING))
			FUNC1(ib_conn->iser_conn->iscsi_conn,
					   ISCSI_ERR_CONN_FAILED);

		/* no more non completed posts to the QP, complete the
		 * termination process w.o worrying on disconnect event */
		ib_conn->state = ISER_CONN_DOWN;
		FUNC4(&ib_conn->wait);
	}
}