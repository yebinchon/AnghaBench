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
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  page_flipping; } ;
typedef  TYPE_1__ drm_i810_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev, void *data,
			  struct drm_file *file_priv)
{
	drm_i810_private_t *dev_priv = dev->dev_private;

	FUNC0("\n");

	FUNC1(dev, file_priv);

	if (!dev_priv->page_flipping)
		FUNC3(dev);

	FUNC2(dev);
	return 0;
}