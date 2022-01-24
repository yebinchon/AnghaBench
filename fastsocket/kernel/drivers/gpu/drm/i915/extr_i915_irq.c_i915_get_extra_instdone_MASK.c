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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  GEN7_INSTDONE_1 ; 
 int /*<<< orphan*/  GEN7_ROW_INSTDONE ; 
 int /*<<< orphan*/  GEN7_SAMPLER_INSTDONE ; 
 int /*<<< orphan*/  GEN7_SC_INSTDONE ; 
 int I915_NUM_INSTDONE_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INSTDONE ; 
 int /*<<< orphan*/  INSTDONE1 ; 
 int /*<<< orphan*/  INSTDONE_I965 ; 
 TYPE_1__* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev,
				    uint32_t *instdone)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	FUNC3(instdone, 0, sizeof(*instdone) * I915_NUM_INSTDONE_REG);

	switch(FUNC1(dev)->gen) {
	case 2:
	case 3:
		instdone[0] = FUNC0(INSTDONE);
		break;
	case 4:
	case 5:
	case 6:
		instdone[0] = FUNC0(INSTDONE_I965);
		instdone[1] = FUNC0(INSTDONE1);
		break;
	default:
		FUNC2(1, "Unsupported platform\n");
	case 7:
		instdone[0] = FUNC0(GEN7_INSTDONE_1);
		instdone[1] = FUNC0(GEN7_SC_INSTDONE);
		instdone[2] = FUNC0(GEN7_SAMPLER_INSTDONE);
		instdone[3] = FUNC0(GEN7_ROW_INSTDONE);
		break;
	}
}