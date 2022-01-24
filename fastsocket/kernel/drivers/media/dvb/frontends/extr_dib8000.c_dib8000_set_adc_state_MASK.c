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
typedef  int u16 ;
struct dib8000_state {int dummy; } ;
typedef  enum dibx000_adc_states { ____Placeholder_dibx000_adc_states } dibx000_adc_states ;

/* Variables and functions */
#define  DIBX000_ADC_OFF 133 
#define  DIBX000_ADC_ON 132 
#define  DIBX000_SLOW_ADC_OFF 131 
#define  DIBX000_SLOW_ADC_ON 130 
#define  DIBX000_VBG_DISABLE 129 
#define  DIBX000_VBG_ENABLE 128 
 int FUNC0 (struct dib8000_state*,int) ; 
 int FUNC1 (struct dib8000_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct dib8000_state *state, enum dibx000_adc_states no)
{
	int ret = 0;
	u16 reg_907 = FUNC0(state, 907), reg_908 = FUNC0(state, 908);

	switch (no) {
	case DIBX000_SLOW_ADC_ON:
		reg_908 |= (1 << 1) | (1 << 0);
		ret |= FUNC1(state, 908, reg_908);
		reg_908 &= ~(1 << 1);
		break;

	case DIBX000_SLOW_ADC_OFF:
		reg_908 |= (1 << 1) | (1 << 0);
		break;

	case DIBX000_ADC_ON:
		reg_907 &= 0x0fff;
		reg_908 &= 0x0003;
		break;

	case DIBX000_ADC_OFF:	// leave the VBG voltage on
		reg_907 |= (1 << 14) | (1 << 13) | (1 << 12);
		reg_908 |= (1 << 5) | (1 << 4) | (1 << 3) | (1 << 2);
		break;

	case DIBX000_VBG_ENABLE:
		reg_907 &= ~(1 << 15);
		break;

	case DIBX000_VBG_DISABLE:
		reg_907 |= (1 << 15);
		break;

	default:
		break;
	}

	ret |= FUNC1(state, 907, reg_907);
	ret |= FUNC1(state, 908, reg_908);

	return ret;
}