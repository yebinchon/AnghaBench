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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef  enum port { ____Placeholder_port } port ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int const) ; 
 int PORT_E ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 
 int* hsw_ddi_translations_dp ; 
 int* hsw_ddi_translations_fdi ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct drm_device *dev, enum port port,
				      bool use_fdi_mode)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	u32 reg;
	int i;
	const u32 *ddi_translations = ((use_fdi_mode) ?
		hsw_ddi_translations_fdi :
		hsw_ddi_translations_dp);

	FUNC2("Initializing DDI buffers for port %c in %s mode\n",
			FUNC5(port),
			use_fdi_mode ? "FDI" : "DP");

	FUNC4((use_fdi_mode && (port != PORT_E)),
		"Programming port %c in FDI mode, this probably will not work.\n",
		FUNC5(port));

	for (i=0, reg=FUNC1(port); i < FUNC0(hsw_ddi_translations_fdi); i++) {
		FUNC3(reg, ddi_translations[i]);
		reg += 4;
	}
}