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
struct iser_conn {int state; int /*<<< orphan*/  lock; } ;
typedef  enum iser_ib_conn_state { ____Placeholder_iser_ib_conn_state } iser_ib_conn_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct iser_conn *ib_conn,
				     enum iser_ib_conn_state comp,
				     enum iser_ib_conn_state exch)
{
	int ret;

	FUNC0(&ib_conn->lock);
	if ((ret = (ib_conn->state == comp)))
		ib_conn->state = exch;
	FUNC1(&ib_conn->lock);
	return ret;
}