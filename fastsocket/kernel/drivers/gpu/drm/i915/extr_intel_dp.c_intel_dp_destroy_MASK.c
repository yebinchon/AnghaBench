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
struct intel_dp {int dummy; } ;
struct intel_connector {int /*<<< orphan*/  panel; struct drm_connector* edid; } ;
struct drm_connector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 struct intel_dp* FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_connector*) ; 
 struct intel_connector* FUNC7 (struct drm_connector*) ; 

__attribute__((used)) static void
FUNC8(struct drm_connector *connector)
{
	struct intel_dp *intel_dp = FUNC3(connector);
	struct intel_connector *intel_connector = FUNC7(connector);

	if (!FUNC0(intel_connector->edid))
		FUNC6(intel_connector->edid);

	if (FUNC5(intel_dp))
		FUNC4(&intel_connector->panel);

	FUNC2(connector);
	FUNC1(connector);
	FUNC6(connector);
}