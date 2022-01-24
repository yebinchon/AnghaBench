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
struct mad_rmpp_recv {int /*<<< orphan*/  refcount; } ;
struct ib_mad_recv_wc {int dummy; } ;
struct ib_mad_agent_private {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mad_rmpp_recv* FUNC1 (struct ib_mad_agent_private*,struct ib_mad_recv_wc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct mad_rmpp_recv *
FUNC4(struct ib_mad_agent_private *agent,
		  struct ib_mad_recv_wc *mad_recv_wc)
{
	struct mad_rmpp_recv *rmpp_recv;
	unsigned long flags;

	FUNC2(&agent->lock, flags);
	rmpp_recv = FUNC1(agent, mad_recv_wc);
	if (rmpp_recv)
		FUNC0(&rmpp_recv->refcount);
	FUNC3(&agent->lock, flags);
	return rmpp_recv;
}