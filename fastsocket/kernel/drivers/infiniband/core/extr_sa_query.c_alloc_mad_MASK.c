#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ib_sa_query {TYPE_2__* sm_ah; TYPE_3__* mad_buf; TYPE_1__* port; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_7__ {int /*<<< orphan*/  ah; } ;
struct TYPE_6__ {int /*<<< orphan*/  ah; int /*<<< orphan*/  ref; int /*<<< orphan*/  pkey_index; } ;
struct TYPE_5__ {int /*<<< orphan*/  agent; int /*<<< orphan*/  ah_lock; TYPE_2__* sm_ah; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IB_MGMT_SA_DATA ; 
 int /*<<< orphan*/  IB_MGMT_SA_HDR ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  free_sm_ah ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct ib_sa_query *query, gfp_t gfp_mask)
{
	unsigned long flags;

	FUNC4(&query->port->ah_lock, flags);
	if (!query->port->sm_ah) {
		FUNC5(&query->port->ah_lock, flags);
		return -EAGAIN;
	}
	FUNC2(&query->port->sm_ah->ref);
	query->sm_ah = query->port->sm_ah;
	FUNC5(&query->port->ah_lock, flags);

	query->mad_buf = FUNC1(query->port->agent, 1,
					    query->sm_ah->pkey_index,
					    0, IB_MGMT_SA_HDR, IB_MGMT_SA_DATA,
					    gfp_mask);
	if (FUNC0(query->mad_buf)) {
		FUNC3(&query->sm_ah->ref, free_sm_ah);
		return -ENOMEM;
	}

	query->mad_buf->ah = query->sm_ah->ah;

	return 0;
}