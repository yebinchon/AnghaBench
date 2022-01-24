#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  panel; struct drm_connector* edid; } ;
struct TYPE_4__ {scalar_t__ notifier_call; } ;
struct intel_lvds_connector {TYPE_1__ base; TYPE_2__ lid_notifier; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_connector*) ; 
 struct intel_lvds_connector* FUNC6 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC7(struct drm_connector *connector)
{
	struct intel_lvds_connector *lvds_connector =
		FUNC6(connector);

	if (lvds_connector->lid_notifier.notifier_call)
		FUNC1(&lvds_connector->lid_notifier);

	if (!FUNC0(lvds_connector->base.edid))
		FUNC5(lvds_connector->base.edid);

	FUNC4(&lvds_connector->base.panel);

	FUNC3(connector);
	FUNC2(connector);
	FUNC5(connector);
}