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
struct iser_device {int dummy; } ;
struct iser_conn {scalar_t__ state; int /*<<< orphan*/  ep; int /*<<< orphan*/ * cma_id; struct iser_device* device; int /*<<< orphan*/  conn_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  connlist_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ISER_CONN_DOWN ; 
 TYPE_1__ ig ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iser_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct iser_conn *ib_conn, int can_destroy_id)
{
	struct iser_device  *device = ib_conn->device;

	FUNC0(ib_conn->state != ISER_CONN_DOWN);

	FUNC6(&ig.connlist_mutex);
	FUNC5(&ib_conn->conn_list);
	FUNC7(&ig.connlist_mutex);
	FUNC4(ib_conn);
	FUNC3(ib_conn);
	ib_conn->device = NULL;
	/* on EVENT_ADDR_ERROR there's no device yet for this conn */
	if (device != NULL)
		FUNC2(device);
	/* if cma handler context, the caller actually destroy the id */
	if (ib_conn->cma_id != NULL && can_destroy_id) {
		FUNC8(ib_conn->cma_id);
		ib_conn->cma_id = NULL;
	}
	FUNC1(ib_conn->ep);
}