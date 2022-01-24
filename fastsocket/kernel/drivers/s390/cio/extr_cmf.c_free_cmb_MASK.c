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
struct cmb_data {struct cmb_data* last_block; } ;
struct cmb {int dummy; } ;
struct ccw_device_private {int /*<<< orphan*/  cmb_list; struct cmb_data* cmb; } ;
struct ccw_device {int /*<<< orphan*/  ccwlock; struct ccw_device_private* private; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int num_channels; int /*<<< orphan*/  lock; int /*<<< orphan*/ * mem; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 TYPE_1__ cmb_area ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmb_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct ccw_device *cdev)
{
	struct ccw_device_private *priv;
	struct cmb_data *cmb_data;

	FUNC6(&cmb_area.lock);
	FUNC7(cdev->ccwlock);

	priv = cdev->private;

	if (FUNC5(&priv->cmb_list)) {
		/* already freed */
		goto out;
	}

	cmb_data = priv->cmb;
	priv->cmb = NULL;
	if (cmb_data)
		FUNC3(cmb_data->last_block);
	FUNC3(cmb_data);
	FUNC4(&priv->cmb_list);

	if (FUNC5(&cmb_area.list)) {
		ssize_t size;
		size = sizeof(struct cmb) * cmb_area.num_channels;
		FUNC0(NULL, 0);
		FUNC1((unsigned long)cmb_area.mem, FUNC2(size));
		cmb_area.mem = NULL;
	}
out:
	FUNC9(cdev->ccwlock);
	FUNC8(&cmb_area.lock);
}