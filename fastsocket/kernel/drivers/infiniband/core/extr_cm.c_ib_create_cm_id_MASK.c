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
struct ib_device {int dummy; } ;
struct ib_cm_id {int remote_cm_qpn; void* context; int /*<<< orphan*/  cm_handler; struct ib_device* device; int /*<<< orphan*/  state; } ;
struct cm_id_private {struct ib_cm_id id; int /*<<< orphan*/  refcount; int /*<<< orphan*/  work_count; int /*<<< orphan*/  work_list; int /*<<< orphan*/  comp; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  ib_cm_handler ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ib_cm_id* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_CM_IDLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct cm_id_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct cm_id_private*) ; 
 struct cm_id_private* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

struct ib_cm_id *FUNC8(struct ib_device *device,
				 ib_cm_handler cm_handler,
				 void *context)
{
	struct cm_id_private *cm_id_priv;
	int ret;

	cm_id_priv = FUNC6(sizeof *cm_id_priv, GFP_KERNEL);
	if (!cm_id_priv)
		return FUNC0(-ENOMEM);

	cm_id_priv->id.state = IB_CM_IDLE;
	cm_id_priv->id.device = device;
	cm_id_priv->id.cm_handler = cm_handler;
	cm_id_priv->id.context = context;
	cm_id_priv->id.remote_cm_qpn = 1;
	ret = FUNC3(cm_id_priv);
	if (ret)
		goto error;

	FUNC7(&cm_id_priv->lock);
	FUNC4(&cm_id_priv->comp);
	FUNC1(&cm_id_priv->work_list);
	FUNC2(&cm_id_priv->work_count, -1);
	FUNC2(&cm_id_priv->refcount, 1);
	return &cm_id_priv->id;

error:
	FUNC5(cm_id_priv);
	return FUNC0(-ENOMEM);
}