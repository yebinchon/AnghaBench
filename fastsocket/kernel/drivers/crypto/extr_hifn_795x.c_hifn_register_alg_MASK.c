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
struct hifn_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hifn_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hifn_alg_templates ; 
 int /*<<< orphan*/  FUNC2 (struct hifn_device*) ; 

__attribute__((used)) static int FUNC3(struct hifn_device *dev)
{
	int i, err;

	for (i=0; i<FUNC0(hifn_alg_templates); ++i) {
		err = FUNC1(dev, &hifn_alg_templates[i]);
		if (err)
			goto err_out_exit;
	}

	return 0;

err_out_exit:
	FUNC2(dev);
	return err;
}