#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_5__ {TYPE_1__* blit_vb; } ;
typedef  TYPE_2__ drm_radeon_private_t ;
struct TYPE_4__ {struct drm_file* file_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

int
FUNC4(struct drm_device *dev, struct drm_file *file_priv)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	int ret;
	FUNC0("\n");

	ret = FUNC1(dev);
	if (ret)
		return ret;

	dev_priv->blit_vb->file_priv = file_priv;

	FUNC2(dev_priv);
	FUNC3(dev);

	return 0;
}