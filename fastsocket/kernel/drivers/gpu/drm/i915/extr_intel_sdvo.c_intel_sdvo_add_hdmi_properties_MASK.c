#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct drm_device* dev; } ;
struct TYPE_5__ {TYPE_2__ base; } ;
struct intel_sdvo_connector {TYPE_1__ base; } ;
struct intel_sdvo {int color_range_auto; } ;
struct drm_device {int dummy; } ;
struct TYPE_7__ {int gen; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct drm_device*) ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4(struct intel_sdvo *intel_sdvo,
			       struct intel_sdvo_connector *connector)
{
	struct drm_device *dev = connector->base.base.dev;

	FUNC3(&connector->base.base);
	if (FUNC0(dev)->gen >= 4 && FUNC1(dev)) {
		FUNC2(&connector->base.base);
		intel_sdvo->color_range_auto = true;
	}
}