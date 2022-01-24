#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  timeout; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct cm_id_private {TYPE_4__* timewait_info; TYPE_2__ av; TYPE_1__ id; } ;
struct TYPE_10__ {int /*<<< orphan*/  wq; int /*<<< orphan*/  lock; int /*<<< orphan*/  timewait_list; } ;
struct TYPE_8__ {int /*<<< orphan*/  work; } ;
struct TYPE_9__ {TYPE_3__ work; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_CM_TIMEWAIT ; 
 TYPE_5__ cm ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct cm_id_private *cm_id_priv)
{
	int wait_time;
	unsigned long flags;

	FUNC5(&cm.lock, flags);
	FUNC0(cm_id_priv->timewait_info);
	FUNC2(&cm_id_priv->timewait_info->list, &cm.timewait_list);
	FUNC6(&cm.lock, flags);

	/*
	 * The cm_id could be destroyed by the user before we exit timewait.
	 * To protect against this, we search for the cm_id after exiting
	 * timewait before notifying the user that we've exited timewait.
	 */
	cm_id_priv->id.state = IB_CM_TIMEWAIT;
	wait_time = FUNC1(cm_id_priv->av.timeout);
	FUNC4(cm.wq, &cm_id_priv->timewait_info->work.work,
			   FUNC3(wait_time));
	cm_id_priv->timewait_info = NULL;
}