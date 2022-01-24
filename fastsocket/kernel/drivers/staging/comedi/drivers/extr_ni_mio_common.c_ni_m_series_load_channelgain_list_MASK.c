#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {int dummy; } ;
struct TYPE_4__ {size_t gainlkup; int /*<<< orphan*/  reg_type; } ;
struct TYPE_3__ {unsigned int ai_calib_source; unsigned int* ai_offset; int /*<<< orphan*/  (* stc_writew ) (struct comedi_device*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
#define  AREF_COMMON 131 
#define  AREF_DIFF 130 
#define  AREF_GROUND 129 
#define  AREF_OTHER 128 
 unsigned int CR_ALT_FILTER ; 
 unsigned int CR_ALT_SOURCE ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  Configuration_Memory_Clear ; 
 unsigned int MSeries_AI_Bypass_Cal_Sel_Neg_Mask ; 
 unsigned int MSeries_AI_Bypass_Cal_Sel_Pos_Mask ; 
 unsigned int MSeries_AI_Bypass_Config_FIFO_Bit ; 
 unsigned int MSeries_AI_Bypass_Dither_Bit ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int MSeries_AI_Bypass_Mode_Mux_Mask ; 
 unsigned int MSeries_AI_Bypass_Polarity_Bit ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned int MSeries_AI_Config_Channel_Type_Common_Ref_Bits ; 
 unsigned int MSeries_AI_Config_Channel_Type_Differential_Bits ; 
 unsigned int MSeries_AI_Config_Channel_Type_Ground_Ref_Bits ; 
 unsigned int MSeries_AI_Config_Dither_Bit ; 
 unsigned int FUNC6 (unsigned int) ; 
 unsigned int MSeries_AI_Config_Last_Channel_Bit ; 
 unsigned int MSeries_AI_Config_Polarity_Bit ; 
 unsigned int MSeries_AO_Bypass_AO_Cal_Sel_Mask ; 
 int /*<<< orphan*/  M_Offset_AI_Config_FIFO_Bypass ; 
 int /*<<< orphan*/  M_Offset_AI_Config_FIFO_Data ; 
 TYPE_2__ boardtype ; 
 TYPE_1__* devpriv ; 
 unsigned int** ni_gainlkup ; 
 int /*<<< orphan*/  FUNC7 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct comedi_device *dev,
					      unsigned int n_chan,
					      unsigned int *list)
{
	unsigned int chan, range, aref;
	unsigned int i;
	unsigned offset;
	unsigned int dither;
	unsigned range_code;

	devpriv->stc_writew(dev, 1, Configuration_Memory_Clear);

/* offset = 1 << (boardtype.adbits - 1); */
	if ((list[0] & CR_ALT_SOURCE)) {
		unsigned bypass_bits;
		chan = FUNC1(list[0]);
		range = FUNC2(list[0]);
		range_code = ni_gainlkup[boardtype.gainlkup][range];
		dither = ((list[0] & CR_ALT_FILTER) != 0);
		bypass_bits = MSeries_AI_Bypass_Config_FIFO_Bit;
		bypass_bits |= chan;
		bypass_bits |=
		    (devpriv->ai_calib_source) &
		    (MSeries_AI_Bypass_Cal_Sel_Pos_Mask |
		     MSeries_AI_Bypass_Cal_Sel_Neg_Mask |
		     MSeries_AI_Bypass_Mode_Mux_Mask |
		     MSeries_AO_Bypass_AO_Cal_Sel_Mask);
		bypass_bits |= FUNC3(range_code);
		if (dither)
			bypass_bits |= MSeries_AI_Bypass_Dither_Bit;
		/*  don't use 2's complement encoding */
		bypass_bits |= MSeries_AI_Bypass_Polarity_Bit;
		FUNC8(bypass_bits, M_Offset_AI_Config_FIFO_Bypass);
	} else {
		FUNC8(0, M_Offset_AI_Config_FIFO_Bypass);
	}
	offset = 0;
	for (i = 0; i < n_chan; i++) {
		unsigned config_bits = 0;
		chan = FUNC1(list[i]);
		aref = FUNC0(list[i]);
		range = FUNC2(list[i]);
		dither = ((list[i] & CR_ALT_FILTER) != 0);

		range_code = ni_gainlkup[boardtype.gainlkup][range];
		devpriv->ai_offset[i] = offset;
		switch (aref) {
		case AREF_DIFF:
			config_bits |=
			    MSeries_AI_Config_Channel_Type_Differential_Bits;
			break;
		case AREF_COMMON:
			config_bits |=
			    MSeries_AI_Config_Channel_Type_Common_Ref_Bits;
			break;
		case AREF_GROUND:
			config_bits |=
			    MSeries_AI_Config_Channel_Type_Ground_Ref_Bits;
			break;
		case AREF_OTHER:
			break;
		}
		config_bits |= FUNC5(chan);
		config_bits |=
		    FUNC4(boardtype.reg_type, chan);
		config_bits |= FUNC6(range_code);
		if (i == n_chan - 1)
			config_bits |= MSeries_AI_Config_Last_Channel_Bit;
		if (dither)
			config_bits |= MSeries_AI_Config_Dither_Bit;
		/*  don't use 2's complement encoding */
		config_bits |= MSeries_AI_Config_Polarity_Bit;
		FUNC9(config_bits, M_Offset_AI_Config_FIFO_Data);
	}
	FUNC7(dev);
}