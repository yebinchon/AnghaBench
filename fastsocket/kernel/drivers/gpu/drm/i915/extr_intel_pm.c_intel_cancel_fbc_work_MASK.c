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
struct drm_i915_private {TYPE_1__* fbc_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct drm_i915_private *dev_priv)
{
	if (dev_priv->fbc_work == NULL)
		return;

	FUNC0("cancelling pending FBC enable\n");

	/* Synchronisation is provided by struct_mutex and checking of
	 * dev_priv->fbc_work, so we can perform the cancellation
	 * entirely asynchronously.
	 */
	if (FUNC1(&dev_priv->fbc_work->work))
		/* tasklet was killed before being run, clean up */
		FUNC2(dev_priv->fbc_work);

	/* Mark the work as no longer wanted so that if it does
	 * wake-up (because the work was already running and waiting
	 * for our mutex), it will discover that is no longer
	 * necessary to run.
	 */
	dev_priv->fbc_work = NULL;
}