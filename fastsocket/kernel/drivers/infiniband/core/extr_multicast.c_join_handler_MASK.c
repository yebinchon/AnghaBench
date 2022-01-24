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
typedef  scalar_t__ u16 ;
struct ib_sa_mcmember_rec {int /*<<< orphan*/  mgid; int /*<<< orphan*/  pkey; } ;
struct mcast_group {scalar_t__ state; scalar_t__ pkey_index; int /*<<< orphan*/  work; TYPE_2__* port; int /*<<< orphan*/  node; struct ib_sa_mcmember_rec rec; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  table; int /*<<< orphan*/  port_num; TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 scalar_t__ MCAST_BUSY ; 
 scalar_t__ MCAST_INVALID_PKEY_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct mcast_group*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mgid0 ; 
 int /*<<< orphan*/  FUNC5 (struct mcast_group*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(int status, struct ib_sa_mcmember_rec *rec,
			 void *context)
{
	struct mcast_group *group = context;
	u16 pkey_index = MCAST_INVALID_PKEY_INDEX;

	if (status)
		FUNC5(group, status);
	else {
		FUNC1(group->port->dev->device, group->port->port_num,
			     FUNC0(rec->pkey), &pkey_index);

		FUNC7(&group->port->lock);
		group->rec = *rec;
		if (group->state == MCAST_BUSY &&
		    group->pkey_index == MCAST_INVALID_PKEY_INDEX)
			group->pkey_index = pkey_index;
		if (!FUNC4(&mgid0, &group->rec.mgid, sizeof mgid0)) {
			FUNC6(&group->node, &group->port->table);
			FUNC2(group->port, group, 1);
		}
		FUNC8(&group->port->lock);
	}
	FUNC3(&group->work);
}