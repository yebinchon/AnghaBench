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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_i915_private {int dummy; } ;
typedef  enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PORT_A ; 
 int PORT_B ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int PORT_E ; 
 int TRANSCODER_EDP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  TRANS_DDI_PORT_MASK ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static uint32_t FUNC8(struct drm_i915_private *dev_priv,
				       enum pipe pipe)
{
	uint32_t temp, ret;
	enum port port;
	enum transcoder cpu_transcoder = FUNC5(dev_priv,
								      pipe);
	int i;

	if (cpu_transcoder == TRANSCODER_EDP) {
		port = PORT_A;
	} else {
		temp = FUNC1(FUNC3(cpu_transcoder));
		temp &= TRANS_DDI_PORT_MASK;

		for (i = PORT_B; i <= PORT_E; i++)
			if (temp == FUNC4(i))
				port = i;
	}

	ret = FUNC1(FUNC2(port));

	FUNC0("Pipe %c connected to port %c using clock 0x%08x\n",
		      FUNC6(pipe), FUNC7(port), ret);

	return ret;
}