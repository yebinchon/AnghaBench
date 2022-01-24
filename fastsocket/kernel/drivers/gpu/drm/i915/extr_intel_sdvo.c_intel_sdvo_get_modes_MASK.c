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
struct intel_sdvo_connector {int dummy; } ;
struct drm_connector {int /*<<< orphan*/  probed_modes; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct intel_sdvo_connector*) ; 
 scalar_t__ FUNC1 (struct intel_sdvo_connector*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct intel_sdvo_connector* FUNC6 (struct drm_connector*) ; 

__attribute__((used)) static int FUNC7(struct drm_connector *connector)
{
	struct intel_sdvo_connector *intel_sdvo_connector = FUNC6(connector);

	if (FUNC1(intel_sdvo_connector))
		FUNC4(connector);
	else if (FUNC0(intel_sdvo_connector))
		FUNC3(connector);
	else
		FUNC2(connector);

	return !FUNC5(&connector->probed_modes);
}