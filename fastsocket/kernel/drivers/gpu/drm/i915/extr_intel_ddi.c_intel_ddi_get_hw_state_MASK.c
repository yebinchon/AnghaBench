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
typedef  int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef  enum port { ____Placeholder_port } port ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DDI_BUF_CTL_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int PIPE_A ; 
 int PIPE_B ; 
 int PIPE_C ; 
 int PORT_A ; 
 int TRANSCODER_A ; 
 int TRANSCODER_C ; 
 int TRANSCODER_EDP ; 
#define  TRANS_DDI_EDP_INPUT_A_ON 131 
#define  TRANS_DDI_EDP_INPUT_A_ONOFF 130 
#define  TRANS_DDI_EDP_INPUT_B_ONOFF 129 
#define  TRANS_DDI_EDP_INPUT_C_ONOFF 128 
 int TRANS_DDI_EDP_INPUT_MASK ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int TRANS_DDI_PORT_MASK ; 
 int FUNC4 (int) ; 
 int FUNC5 (struct intel_encoder*) ; 

bool FUNC6(struct intel_encoder *encoder,
			    enum pipe *pipe)
{
	struct drm_device *dev = encoder->base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	enum port port = FUNC5(encoder);
	u32 tmp;
	int i;

	tmp = FUNC2(FUNC0(port));

	if (!(tmp & DDI_BUF_CTL_ENABLE))
		return false;

	if (port == PORT_A) {
		tmp = FUNC2(FUNC3(TRANSCODER_EDP));

		switch (tmp & TRANS_DDI_EDP_INPUT_MASK) {
		case TRANS_DDI_EDP_INPUT_A_ON:
		case TRANS_DDI_EDP_INPUT_A_ONOFF:
			*pipe = PIPE_A;
			break;
		case TRANS_DDI_EDP_INPUT_B_ONOFF:
			*pipe = PIPE_B;
			break;
		case TRANS_DDI_EDP_INPUT_C_ONOFF:
			*pipe = PIPE_C;
			break;
		}

		return true;
	} else {
		for (i = TRANSCODER_A; i <= TRANSCODER_C; i++) {
			tmp = FUNC2(FUNC3(i));

			if ((tmp & TRANS_DDI_PORT_MASK)
			    == FUNC4(port)) {
				*pipe = i;
				return true;
			}
		}
	}

	FUNC1("No pipe for ddi port %i found\n", port);

	return true;
}