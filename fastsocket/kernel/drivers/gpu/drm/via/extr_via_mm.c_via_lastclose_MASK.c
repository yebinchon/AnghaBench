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
struct drm_device {int /*<<< orphan*/  struct_mutex; scalar_t__ dev_private; } ;
struct TYPE_2__ {scalar_t__ agp_initialized; int /*<<< orphan*/  agp_mm; scalar_t__ vram_initialized; int /*<<< orphan*/  vram_mm; } ;
typedef  TYPE_1__ drm_via_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct drm_device *dev)
{
	drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;

	if (!dev_priv)
		return;

	FUNC1(&dev->struct_mutex);
	if (dev_priv->vram_initialized) {
		FUNC0(&dev_priv->vram_mm);
		dev_priv->vram_initialized = 0;
	}
	if (dev_priv->agp_initialized) {
		FUNC0(&dev_priv->agp_mm);
		dev_priv->agp_initialized = 0;
	}
	FUNC2(&dev->struct_mutex);
}