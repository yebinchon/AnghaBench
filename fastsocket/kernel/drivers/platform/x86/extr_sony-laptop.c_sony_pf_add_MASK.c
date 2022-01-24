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
 int ENOMEM ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sony_pf_device ; 
 int /*<<< orphan*/  sony_pf_driver ; 
 int /*<<< orphan*/  sony_pf_users ; 

__attribute__((used)) static int FUNC7(void)
{
	int ret = 0;

	/* don't run again if already initialized */
	if (FUNC0(1, &sony_pf_users) > 1)
		return 0;

	ret = FUNC5(&sony_pf_driver);
	if (ret)
		goto out;

	sony_pf_device = FUNC3("sony-laptop", -1);
	if (!sony_pf_device) {
		ret = -ENOMEM;
		goto out_platform_registered;
	}

	ret = FUNC2(sony_pf_device);
	if (ret)
		goto out_platform_alloced;

	return 0;

      out_platform_alloced:
	FUNC4(sony_pf_device);
	sony_pf_device = NULL;
      out_platform_registered:
	FUNC6(&sony_pf_driver);
      out:
	FUNC1(&sony_pf_users);
	return ret;
}