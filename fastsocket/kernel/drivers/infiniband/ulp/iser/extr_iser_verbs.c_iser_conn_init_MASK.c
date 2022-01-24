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
struct iser_conn {int /*<<< orphan*/  lock; int /*<<< orphan*/  conn_list; int /*<<< orphan*/  refcount; int /*<<< orphan*/  post_send_buf_count; scalar_t__ post_recv_buf_count; int /*<<< orphan*/  wait; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ISER_CONN_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct iser_conn *ib_conn)
{
	ib_conn->state = ISER_CONN_INIT;
	FUNC2(&ib_conn->wait);
	ib_conn->post_recv_buf_count = 0;
	FUNC1(&ib_conn->post_send_buf_count, 0);
	FUNC1(&ib_conn->refcount, 1); /* ref ib conn allocation */
	FUNC0(&ib_conn->conn_list);
	FUNC3(&ib_conn->lock);
}