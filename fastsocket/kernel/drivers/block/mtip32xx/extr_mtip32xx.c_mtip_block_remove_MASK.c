#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct kobject {int dummy; } ;
struct driver_data {int /*<<< orphan*/ * queue; TYPE_2__* disk; int /*<<< orphan*/  index; int /*<<< orphan*/  dd_flag; scalar_t__ mtip_svc_handler; TYPE_1__* port; } ;
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {scalar_t__ queue; } ;
struct TYPE_6__ {int /*<<< orphan*/  svc_wait; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTIP_DDF_INIT_DONE_BIT ; 
 int /*<<< orphan*/  MTIP_PF_SVC_THD_STOP_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_3__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct kobject* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct driver_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct driver_data*,struct kobject*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  rssd_index_ida ; 
 int /*<<< orphan*/  rssd_index_lock ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct driver_data *dd)
{
	struct kobject *kobj;

	if (dd->mtip_svc_handler) {
		FUNC11(MTIP_PF_SVC_THD_STOP_BIT, &dd->port->flags);
		FUNC15(&dd->port->svc_wait);
		FUNC6(dd->mtip_svc_handler);
	}

	/* Clean up the sysfs attributes, if created */
	if (FUNC14(MTIP_DDF_INIT_DONE_BIT, &dd->dd_flag)) {
		kobj = FUNC4(&FUNC2(dd->disk)->kobj);
		if (kobj) {
			FUNC9(dd, kobj);
			FUNC5(kobj);
		}
	}
	FUNC7(dd);

	/*
	 * Delete our gendisk structure. This also removes the device
	 * from /dev
	 */
	if (dd->disk) {
		if (dd->disk->queue)
			FUNC1(dd->disk);
		else
			FUNC10(dd->disk);
	}

	FUNC12(&rssd_index_lock);
	FUNC3(&rssd_index_ida, dd->index);
	FUNC13(&rssd_index_lock);

	FUNC0(dd->queue);
	dd->disk  = NULL;
	dd->queue = NULL;

	/* De-initialize the protocol layer. */
	FUNC8(dd);

	return 0;
}