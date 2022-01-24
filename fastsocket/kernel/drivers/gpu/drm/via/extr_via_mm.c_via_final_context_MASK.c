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
struct drm_device {int ctx_count; scalar_t__ dev_private; } ;
typedef  int /*<<< orphan*/  drm_via_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

int FUNC5(struct drm_device *dev, int context)
{
	drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;

	FUNC4(dev_priv, context);

	/* Linux specific until context tracking code gets ported to BSD */
	/* Last context, perform cleanup */
	if (dev->ctx_count == 1 && dev->dev_private) {
		FUNC0("Last Context\n");
		FUNC1(dev);
		FUNC2(dev_priv);
		FUNC3(dev);
	}
	return 1;
}