#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cm_work {int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  remote_id; int /*<<< orphan*/  local_id; } ;
struct cm_timewait_info {scalar_t__ remote_qpn; TYPE_1__ work; int /*<<< orphan*/  list; } ;
struct TYPE_5__ {scalar_t__ state; } ;
struct cm_id_private {scalar_t__ remote_qpn; int /*<<< orphan*/  lock; int /*<<< orphan*/  work_list; int /*<<< orphan*/  work_count; TYPE_2__ id; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IB_CM_IDLE ; 
 scalar_t__ IB_CM_TIMEWAIT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__ cm ; 
 struct cm_id_private* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct cm_id_private*,struct cm_work*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct cm_work *work)
{
	struct cm_timewait_info *timewait_info;
	struct cm_id_private *cm_id_priv;
	int ret;

	timewait_info = (struct cm_timewait_info *)work;
	FUNC6(&cm.lock);
	FUNC5(&timewait_info->list);
	FUNC7(&cm.lock);

	cm_id_priv = FUNC1(timewait_info->work.local_id,
				   timewait_info->work.remote_id);
	if (!cm_id_priv)
		return -EINVAL;

	FUNC6(&cm_id_priv->lock);
	if (cm_id_priv->id.state != IB_CM_TIMEWAIT ||
	    cm_id_priv->remote_qpn != timewait_info->remote_qpn) {
		FUNC7(&cm_id_priv->lock);
		goto out;
	}
	cm_id_priv->id.state = IB_CM_IDLE;
	ret = FUNC0(&cm_id_priv->work_count);
	if (!ret)
		FUNC4(&work->list, &cm_id_priv->work_list);
	FUNC7(&cm_id_priv->lock);

	if (ret)
		FUNC3(cm_id_priv, work);
	else
		FUNC2(cm_id_priv);
	return 0;
out:
	FUNC2(cm_id_priv);
	return -EINVAL;
}