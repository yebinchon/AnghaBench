#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fcoe_sysfs_function_template {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; struct device* parent; } ;
struct fcoe_ctlr_device {int id; int /*<<< orphan*/ * work_q; int /*<<< orphan*/ * devloss_work_q; TYPE_1__ dev; int /*<<< orphan*/  devloss_work_q_name; int /*<<< orphan*/  work_q_name; int /*<<< orphan*/  fcf_dev_loss_tmo; int /*<<< orphan*/  lock; int /*<<< orphan*/  fcfs; int /*<<< orphan*/  mode; struct fcoe_sysfs_function_template* f; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIP_CONN_TYPE_FABRIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctlr_num ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  fcoe_bus_type ; 
 int /*<<< orphan*/  fcoe_ctlr_device_type ; 
 int /*<<< orphan*/  fcoe_fcf_dev_loss_tmo ; 
 int /*<<< orphan*/  FUNC6 (struct fcoe_ctlr_device*) ; 
 struct fcoe_ctlr_device* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,int) ; 

struct fcoe_ctlr_device *FUNC10(struct device *parent,
				    struct fcoe_sysfs_function_template *f,
				    int priv_size)
{
	struct fcoe_ctlr_device *ctlr;
	int error = 0;

	ctlr = FUNC7(sizeof(struct fcoe_ctlr_device) + priv_size,
		       GFP_KERNEL);
	if (!ctlr)
		goto out;

	ctlr->id = FUNC1(&ctlr_num) - 1;
	ctlr->f = f;
	ctlr->mode = FIP_CONN_TYPE_FABRIC;
	FUNC0(&ctlr->fcfs);
	FUNC8(&ctlr->lock);
	ctlr->dev.parent = parent;
	ctlr->dev.bus = &fcoe_bus_type;
	ctlr->dev.type = &fcoe_ctlr_device_type;

	ctlr->fcf_dev_loss_tmo = fcoe_fcf_dev_loss_tmo;

	FUNC9(ctlr->work_q_name, sizeof(ctlr->work_q_name),
		 "ctlr_wq_%d", ctlr->id);
	ctlr->work_q = FUNC2(
		ctlr->work_q_name);
	if (!ctlr->work_q)
		goto out_del;

	FUNC9(ctlr->devloss_work_q_name,
		 sizeof(ctlr->devloss_work_q_name),
		 "ctlr_dl_wq_%d", ctlr->id);
	ctlr->devloss_work_q = FUNC2(
		ctlr->devloss_work_q_name);
	if (!ctlr->devloss_work_q)
		goto out_del_q;

	FUNC4(&ctlr->dev, "ctlr_%d", ctlr->id);
	error = FUNC5(&ctlr->dev);
	if (error)
		goto out_del_q2;

	return ctlr;

out_del_q2:
	FUNC3(ctlr->devloss_work_q);
	ctlr->devloss_work_q = NULL;
out_del_q:
	FUNC3(ctlr->work_q);
	ctlr->work_q = NULL;
out_del:
	FUNC6(ctlr);
out:
	return NULL;
}