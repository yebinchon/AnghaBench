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
struct TYPE_2__ {int support; } ;
struct drm_i915_private {int render_reclock_avail; TYPE_1__ edp; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct bdb_header {int dummy; } ;
struct bdb_driver_features {scalar_t__ lvds_config; scalar_t__ dual_frequency; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDB_DRIVER_FEATURES ; 
 scalar_t__ BDB_DRIVER_FEATURE_EDP ; 
 scalar_t__ FUNC0 (struct drm_device*) ; 
 struct bdb_driver_features* FUNC1 (struct bdb_header*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct drm_i915_private *dev_priv,
		       struct bdb_header *bdb)
{
	struct drm_device *dev = dev_priv->dev;
	struct bdb_driver_features *driver;

	driver = FUNC1(bdb, BDB_DRIVER_FEATURES);
	if (!driver)
		return;

	if (FUNC0(dev) &&
	    driver->lvds_config == BDB_DRIVER_FEATURE_EDP)
		dev_priv->edp.support = 1;

	if (driver->dual_frequency)
		dev_priv->render_reclock_avail = true;
}