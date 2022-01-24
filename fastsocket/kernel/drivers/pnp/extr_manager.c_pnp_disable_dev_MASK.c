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
struct pnp_dev {scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pnp_dev*) ; 
 int /*<<< orphan*/  pnp_res_mutex ; 
 int FUNC3 (struct pnp_dev*) ; 

int FUNC4(struct pnp_dev *dev)
{
	int error;

	if (!dev->active)
		return 0;

	error = FUNC3(dev);
	if (error)
		return error;

	dev->active = 0;

	/* release the resources so that other devices can use them */
	FUNC0(&pnp_res_mutex);
	FUNC2(dev);
	FUNC1(&pnp_res_mutex);

	return 0;
}