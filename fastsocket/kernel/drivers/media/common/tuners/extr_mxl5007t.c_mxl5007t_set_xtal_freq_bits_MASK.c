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
struct mxl5007t_state {int /*<<< orphan*/  tab_init; } ;
typedef  enum mxl5007t_xtal_freq { ____Placeholder_mxl5007t_xtal_freq } mxl5007t_xtal_freq ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
#define  MxL_XTAL_16_MHZ 141 
#define  MxL_XTAL_20_25_MHZ 140 
#define  MxL_XTAL_20_48_MHZ 139 
#define  MxL_XTAL_20_MHZ 138 
#define  MxL_XTAL_24_MHZ 137 
#define  MxL_XTAL_25_14_MHZ 136 
#define  MxL_XTAL_25_MHZ 135 
#define  MxL_XTAL_27_MHZ 134 
#define  MxL_XTAL_28_8_MHZ 133 
#define  MxL_XTAL_32_MHZ 132 
#define  MxL_XTAL_40_MHZ 131 
#define  MxL_XTAL_44_MHZ 130 
#define  MxL_XTAL_48_MHZ 129 
#define  MxL_XTAL_49_3811_MHZ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC2(struct mxl5007t_state *state,
					enum mxl5007t_xtal_freq xtal_freq)
{
	switch (xtal_freq) {
	case MxL_XTAL_16_MHZ:
		/* select xtal freq & ref freq */
		FUNC1(state->tab_init, 0x03, 0xf0, 0x00);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x00);
		break;
	case MxL_XTAL_20_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0x10);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x01);
		break;
	case MxL_XTAL_20_25_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0x20);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x02);
		break;
	case MxL_XTAL_20_48_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0x30);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x03);
		break;
	case MxL_XTAL_24_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0x40);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x04);
		break;
	case MxL_XTAL_25_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0x50);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x05);
		break;
	case MxL_XTAL_25_14_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0x60);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x06);
		break;
	case MxL_XTAL_27_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0x70);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x07);
		break;
	case MxL_XTAL_28_8_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0x80);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x08);
		break;
	case MxL_XTAL_32_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0x90);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x09);
		break;
	case MxL_XTAL_40_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0xa0);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x0a);
		break;
	case MxL_XTAL_44_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0xb0);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x0b);
		break;
	case MxL_XTAL_48_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0xc0);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x0c);
		break;
	case MxL_XTAL_49_3811_MHZ:
		FUNC1(state->tab_init, 0x03, 0xf0, 0xd0);
		FUNC1(state->tab_init, 0x05, 0x0f, 0x0d);
		break;
	default:
		FUNC0(-EINVAL);
		return;
	}

	return;
}