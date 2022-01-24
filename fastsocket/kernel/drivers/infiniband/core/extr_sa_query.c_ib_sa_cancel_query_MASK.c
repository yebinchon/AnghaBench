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
struct ib_sa_query {struct ib_mad_send_buf* mad_buf; TYPE_1__* port; } ;
struct ib_mad_send_buf {int dummy; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_2__ {struct ib_mad_agent* agent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_mad_agent*,struct ib_mad_send_buf*) ; 
 struct ib_sa_query* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  idr_lock ; 
 int /*<<< orphan*/  query_idr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(int id, struct ib_sa_query *query)
{
	unsigned long flags;
	struct ib_mad_agent *agent;
	struct ib_mad_send_buf *mad_buf;

	FUNC2(&idr_lock, flags);
	if (FUNC1(&query_idr, id) != query) {
		FUNC3(&idr_lock, flags);
		return;
	}
	agent = query->port->agent;
	mad_buf = query->mad_buf;
	FUNC3(&idr_lock, flags);

	FUNC0(agent, mad_buf);
}