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
struct intel_sdvo_connector {scalar_t__ tv_format; } ;
struct drm_connector {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_connector*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_sdvo_connector*) ; 
 struct intel_sdvo_connector* FUNC5 (struct drm_connector*) ; 

__attribute__((used)) static void FUNC6(struct drm_connector *connector)
{
	struct intel_sdvo_connector *intel_sdvo_connector = FUNC5(connector);

	if (intel_sdvo_connector->tv_format)
		FUNC1(connector->dev,
				     intel_sdvo_connector->tv_format);

	FUNC3(connector);
	FUNC2(connector);
	FUNC0(connector);
	FUNC4(intel_sdvo_connector);
}