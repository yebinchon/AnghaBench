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
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct iser_conn {scalar_t__ state; int /*<<< orphan*/ * cma_id; int /*<<< orphan*/  conn_list; int /*<<< orphan*/  wait; int /*<<< orphan*/ * device; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  connlist_mutex; int /*<<< orphan*/  connlist; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 scalar_t__ ISER_CONN_DOWN ; 
 scalar_t__ ISER_CONN_PENDING ; 
 scalar_t__ ISER_CONN_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 TYPE_2__ ig ; 
 int /*<<< orphan*/  iser_cma_handler ; 
 int /*<<< orphan*/  FUNC2 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_conn*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct sockaddr*,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

int FUNC13(struct iser_conn   *ib_conn,
		 struct sockaddr_in *src_addr,
		 struct sockaddr_in *dst_addr,
		 int                 non_blocking)
{
	struct sockaddr *src, *dst;
	int err = 0;

	FUNC11(ib_conn->name, "%pI4:%d",
		&dst_addr->sin_addr.s_addr, dst_addr->sin_port);

	/* the device is known only --after-- address resolution */
	ib_conn->device = NULL;

	FUNC5("connecting to: %pI4, port 0x%x\n",
		  &dst_addr->sin_addr, dst_addr->sin_port);

	ib_conn->state = ISER_CONN_PENDING;

	FUNC2(ib_conn); /* ref ib conn's cma id */
	ib_conn->cma_id = FUNC9(iser_cma_handler,
					     (void *)ib_conn,
					     RDMA_PS_TCP, IB_QPT_RC);
	if (FUNC0(ib_conn->cma_id)) {
		err = FUNC1(ib_conn->cma_id);
		FUNC4("rdma_create_id failed: %d\n", err);
		goto id_failure;
	}

	src = (struct sockaddr *)src_addr;
	dst = (struct sockaddr *)dst_addr;
	err = FUNC10(ib_conn->cma_id, src, dst, 1000);
	if (err) {
		FUNC4("rdma_resolve_addr failed: %d\n", err);
		goto addr_failure;
	}

	if (!non_blocking) {
		FUNC12(ib_conn->wait,
					 (ib_conn->state != ISER_CONN_PENDING));

		if (ib_conn->state != ISER_CONN_UP) {
			err =  -EIO;
			goto connect_failure;
		}
	}

	FUNC7(&ig.connlist_mutex);
	FUNC6(&ib_conn->conn_list, &ig.connlist);
	FUNC8(&ig.connlist_mutex);
	return 0;

id_failure:
	ib_conn->cma_id = NULL;
addr_failure:
	ib_conn->state = ISER_CONN_DOWN;
	FUNC3(ib_conn, 1); /* deref ib conn's cma id */
connect_failure:
	FUNC3(ib_conn, 1); /* deref ib conn deallocate */
	return err;
}