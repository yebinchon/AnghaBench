#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iser_conn {int /*<<< orphan*/  state; TYPE_1__* iser_conn; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  iscsi_conn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct iser_conn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct iscsi_endpoint *ep)
{
	struct iser_conn *ib_conn;

	ib_conn = ep->dd_data;
	if (ib_conn->iser_conn)
		/*
		 * Must suspend xmit path if the ep is bound to the
		 * iscsi_conn, so we know we are not accessing the ib_conn
		 * when we free it.
		 *
		 * This may not be bound if the ep poll failed.
		 */
		FUNC0(ib_conn->iser_conn->iscsi_conn);


	FUNC2("ib conn %p state %d\n", ib_conn, ib_conn->state);
	FUNC1(ib_conn);
}