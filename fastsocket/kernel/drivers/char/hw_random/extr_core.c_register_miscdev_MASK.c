#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  this_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_rng_available ; 
 int /*<<< orphan*/  dev_attr_rng_current ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 TYPE_1__ rng_miscdev ; 

__attribute__((used)) static int FUNC4(void)
{
	int err;

	err = FUNC3(&rng_miscdev);
	if (err)
		goto out;
	err = FUNC0(rng_miscdev.this_device,
				 &dev_attr_rng_current);
	if (err)
		goto err_misc_dereg;
	err = FUNC0(rng_miscdev.this_device,
				 &dev_attr_rng_available);
	if (err)
		goto err_remove_current;
out:
	return err;

err_remove_current:
	FUNC1(rng_miscdev.this_device, &dev_attr_rng_current);
err_misc_dereg:
	FUNC2(&rng_miscdev);
	goto out;
}