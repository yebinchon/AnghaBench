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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACVTAP_NUM_DEVS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  macvtap_cdev ; 
 int /*<<< orphan*/  macvtap_class ; 
 int /*<<< orphan*/  macvtap_fops ; 
 int /*<<< orphan*/  macvtap_link_ops ; 
 int /*<<< orphan*/  macvtap_major ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(void)
{
	int err;

	err = FUNC2(&macvtap_major, 0,
				MACVTAP_NUM_DEVS, "macvtap");
	if (err)
		goto out1;

	FUNC5(&macvtap_cdev, &macvtap_fops);
	err = FUNC3(&macvtap_cdev, macvtap_major, MACVTAP_NUM_DEVS);
	if (err)
		goto out2;

	macvtap_class = FUNC6(THIS_MODULE, "macvtap");
	if (FUNC0(macvtap_class)) {
		err = FUNC1(macvtap_class);
		goto out3;
	}

	err = FUNC8(&macvtap_link_ops);
	if (err)
		goto out4;

	return 0;

out4:
	FUNC7(macvtap_class);
out3:
	FUNC4(&macvtap_cdev);
out2:
	FUNC9(macvtap_major, MACVTAP_NUM_DEVS);
out1:
	return err;
}