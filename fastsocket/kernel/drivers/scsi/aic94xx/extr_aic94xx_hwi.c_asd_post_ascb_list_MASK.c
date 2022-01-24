#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  prev; } ;
struct TYPE_7__ {int pending; int /*<<< orphan*/  pend_q_lock; scalar_t__ scbpro; TYPE_2__ pend_q; } ;
struct TYPE_5__ {int max_scbs; } ;
struct asd_ha_struct {TYPE_3__ seq; int /*<<< orphan*/  pcidev; TYPE_1__ hw_prof; } ;
struct TYPE_8__ {int /*<<< orphan*/  prev; } ;
struct asd_ascb {TYPE_4__ list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SAS_QUEUE_FULL ; 
 int /*<<< orphan*/  SCBPRO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_ha_struct*,struct asd_ascb*) ; 
 int /*<<< orphan*/  FUNC5 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC10(struct asd_ha_struct *asd_ha, struct asd_ascb *ascb,
		       int num)
{
	unsigned long flags;
	FUNC0(list);
	int can_queue;

	FUNC8(&asd_ha->seq.pend_q_lock, flags);
	can_queue = asd_ha->hw_prof.max_scbs - asd_ha->seq.pending;
	if (can_queue >= num)
		asd_ha->seq.pending += num;
	else
		can_queue = 0;

	if (!can_queue) {
		FUNC9(&asd_ha->seq.pend_q_lock, flags);
		FUNC2("%s: scb queue full\n", FUNC7(asd_ha->pcidev));
		return -SAS_QUEUE_FULL;
	}

	FUNC4(asd_ha, ascb);

	FUNC1(&list, ascb->list.prev, &ascb->list);

	FUNC3(&list);

	asd_ha->seq.scbpro += num;
	FUNC6(&list, asd_ha->seq.pend_q.prev);
	FUNC5(asd_ha, SCBPRO, (u32)asd_ha->seq.scbpro);
	FUNC9(&asd_ha->seq.pend_q_lock, flags);

	return 0;
}