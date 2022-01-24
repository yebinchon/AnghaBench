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
typedef  int u8 ;
struct mxl5007t_state {int /*<<< orphan*/  tab_init; } ;
typedef  enum mxl5007t_if_freq { ____Placeholder_mxl5007t_if_freq } mxl5007t_if_freq ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
#define  MxL_IF_35_25_MHZ 138 
#define  MxL_IF_36_15_MHZ 137 
#define  MxL_IF_44_MHZ 136 
#define  MxL_IF_4_57_MHZ 135 
#define  MxL_IF_4_5_MHZ 134 
#define  MxL_IF_4_MHZ 133 
#define  MxL_IF_5_38_MHZ 132 
#define  MxL_IF_5_MHZ 131 
#define  MxL_IF_6_28_MHZ 130 
#define  MxL_IF_6_MHZ 129 
#define  MxL_IF_9_1915_MHZ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct mxl5007t_state *state,
				      enum mxl5007t_if_freq if_freq,
				      int invert_if)
{
	u8 val;

	switch (if_freq) {
	case MxL_IF_4_MHZ:
		val = 0x00;
		break;
	case MxL_IF_4_5_MHZ:
		val = 0x02;
		break;
	case MxL_IF_4_57_MHZ:
		val = 0x03;
		break;
	case MxL_IF_5_MHZ:
		val = 0x04;
		break;
	case MxL_IF_5_38_MHZ:
		val = 0x05;
		break;
	case MxL_IF_6_MHZ:
		val = 0x06;
		break;
	case MxL_IF_6_28_MHZ:
		val = 0x07;
		break;
	case MxL_IF_9_1915_MHZ:
		val = 0x08;
		break;
	case MxL_IF_35_25_MHZ:
		val = 0x09;
		break;
	case MxL_IF_36_15_MHZ:
		val = 0x0a;
		break;
	case MxL_IF_44_MHZ:
		val = 0x0b;
		break;
	default:
		FUNC0(-EINVAL);
		return;
	}
	FUNC1(state->tab_init, 0x02, 0x0f, val);

	/* set inverted IF or normal IF */
	FUNC1(state->tab_init, 0x02, 0x10, invert_if ? 0x10 : 0x00);

	return;
}