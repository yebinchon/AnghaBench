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
struct intel_sdvo {int /*<<< orphan*/  hotplug_active; } ;
struct intel_encoder {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDVO_CMD_SET_ACTIVE_HOT_PLUG ; 
 int /*<<< orphan*/  FUNC0 (struct intel_sdvo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct intel_sdvo* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct intel_encoder *encoder)
{
	struct intel_sdvo *intel_sdvo = FUNC1(&encoder->base);

	FUNC0(intel_sdvo, SDVO_CMD_SET_ACTIVE_HOT_PLUG,
			&intel_sdvo->hotplug_active, 2);
}