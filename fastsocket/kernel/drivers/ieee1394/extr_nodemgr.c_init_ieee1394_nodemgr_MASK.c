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
struct TYPE_2__ {int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ nodemgr_dev_template_host ; 
 int /*<<< orphan*/  nodemgr_highlevel ; 
 int /*<<< orphan*/  nodemgr_mid_layer_driver ; 
 int /*<<< orphan*/  nodemgr_ne_class ; 
 int /*<<< orphan*/  nodemgr_ud_class ; 

int FUNC4(void)
{
	int error;

	error = FUNC0(&nodemgr_ne_class);
	if (error)
		goto fail_ne;
	error = FUNC0(&nodemgr_ud_class);
	if (error)
		goto fail_ud;
	error = FUNC2(&nodemgr_mid_layer_driver);
	if (error)
		goto fail_ml;
	/* This driver is not used if nodemgr is off (disable_nodemgr=1). */
	nodemgr_dev_template_host.driver = &nodemgr_mid_layer_driver;

	FUNC3(&nodemgr_highlevel);
	return 0;

fail_ml:
	FUNC1(&nodemgr_ud_class);
fail_ud:
	FUNC1(&nodemgr_ne_class);
fail_ne:
	return error;
}