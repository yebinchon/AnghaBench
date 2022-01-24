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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  driver_attr_recording_status ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * vmlogrdr_class ; 
 int /*<<< orphan*/  vmlogrdr_driver ; 
 int /*<<< orphan*/  vmlogrdr_iucv_handler ; 

__attribute__((used)) static int FUNC9(void)
{
	int ret;

	/* Register with iucv driver */
	ret = FUNC7(&vmlogrdr_iucv_handler, 1);
	if (ret)
		goto out;

	ret = FUNC4(&vmlogrdr_driver);
	if (ret)
		goto out_iucv;

	ret = FUNC3(&vmlogrdr_driver,
				 &driver_attr_recording_status);
	if (ret)
		goto out_driver;

	vmlogrdr_class = FUNC2(THIS_MODULE, "vmlogrdr");
	if (FUNC0(vmlogrdr_class)) {
		ret = FUNC1(vmlogrdr_class);
		vmlogrdr_class = NULL;
		goto out_attr;
	}
	return 0;

out_attr:
	FUNC5(&vmlogrdr_driver, &driver_attr_recording_status);
out_driver:
	FUNC6(&vmlogrdr_driver);
out_iucv:
	FUNC8(&vmlogrdr_iucv_handler, 1);
out:
	return ret;
}