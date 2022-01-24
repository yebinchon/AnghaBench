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
struct drm_encoder {int /*<<< orphan*/  head; int /*<<< orphan*/  base; struct drm_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  num_encoder; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	FUNC1(dev);
	FUNC0(dev, &encoder->base);
	FUNC3(&encoder->head);
	dev->mode_config.num_encoder--;
	FUNC2(dev);
}