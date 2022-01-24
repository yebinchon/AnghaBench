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
struct drm_radeon_master_private {scalar_t__ sarea; TYPE_1__* sarea_priv; } ;
struct drm_master {struct drm_radeon_master_private* driver_priv; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ pfCurrentPage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_radeon_master_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_master*) ; 

void FUNC3(struct drm_device *dev, struct drm_master *master)
{
	struct drm_radeon_master_private *master_priv = master->driver_priv;

	if (!master_priv)
		return;

	if (master_priv->sarea_priv &&
	    master_priv->sarea_priv->pfCurrentPage != 0)
		FUNC2(dev, master);

	master_priv->sarea_priv = NULL;
	if (master_priv->sarea)
		FUNC0(dev, master_priv->sarea);

	FUNC1(master_priv);

	master->driver_priv = NULL;
}