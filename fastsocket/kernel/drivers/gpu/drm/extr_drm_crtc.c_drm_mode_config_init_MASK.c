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
struct TYPE_2__ {scalar_t__ num_encoder; scalar_t__ num_crtc; scalar_t__ num_connector; scalar_t__ num_fb; int /*<<< orphan*/  crtc_idr; int /*<<< orphan*/  plane_list; int /*<<< orphan*/  property_blob_list; int /*<<< orphan*/  property_list; int /*<<< orphan*/  encoder_list; int /*<<< orphan*/  connector_list; int /*<<< orphan*/  crtc_list; int /*<<< orphan*/  fb_list; int /*<<< orphan*/  fb_lock; int /*<<< orphan*/  idr_mutex; int /*<<< orphan*/  mutex; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct drm_device *dev)
{
	FUNC5(&dev->mode_config.mutex);
	FUNC5(&dev->mode_config.idr_mutex);
	FUNC5(&dev->mode_config.fb_lock);
	FUNC0(&dev->mode_config.fb_list);
	FUNC0(&dev->mode_config.crtc_list);
	FUNC0(&dev->mode_config.connector_list);
	FUNC0(&dev->mode_config.encoder_list);
	FUNC0(&dev->mode_config.property_list);
	FUNC0(&dev->mode_config.property_blob_list);
	FUNC0(&dev->mode_config.plane_list);
	FUNC4(&dev->mode_config.crtc_idr);

	FUNC2(dev);
	FUNC1(dev);
	FUNC3(dev);

	/* Just to be sure */
	dev->mode_config.num_fb = 0;
	dev->mode_config.num_connector = 0;
	dev->mode_config.num_crtc = 0;
	dev->mode_config.num_encoder = 0;
}