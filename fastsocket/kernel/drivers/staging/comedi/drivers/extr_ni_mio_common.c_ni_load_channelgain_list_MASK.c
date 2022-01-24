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
struct TYPE_4__ {int reg_type; int adbits; size_t gainlkup; } ;
struct TYPE_3__ {int changain_state; unsigned int changain_spec; int ai_calib_source_enabled; unsigned int ai_calib_source; unsigned int* ai_offset; int /*<<< orphan*/  (* stc_writew ) (struct comedi_device*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 unsigned int AI_COMMON ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int AI_DIFFERENTIAL ; 
 unsigned int AI_DITHER ; 
 unsigned int AI_GROUND ; 
 unsigned int AI_LAST_CHANNEL ; 
#define  AREF_COMMON 131 
#define  AREF_DIFF 130 
#define  AREF_GROUND 129 
#define  AREF_OTHER 128 
 unsigned int CR_ALT_FILTER ; 
 unsigned int CR_ALT_SOURCE ; 
 unsigned int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  Calibration_Channel_6143 ; 
 unsigned int Calibration_Channel_6143_RelayOff ; 
 unsigned int Calibration_Channel_6143_RelayOn ; 
 int /*<<< orphan*/  Calibration_Channel_Select_611x ; 
 int /*<<< orphan*/  Configuration_Memory_Clear ; 
 int /*<<< orphan*/  Configuration_Memory_High ; 
 int /*<<< orphan*/  Configuration_Memory_Low ; 
 TYPE_2__ boardtype ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned int** ni_gainlkup ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*) ; 
 int ni_reg_611x ; 
 int ni_reg_6143 ; 
 int ni_reg_m_series_mask ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct comedi_device *dev,
				     unsigned int n_chan, unsigned int *list)
{
	unsigned int chan, range, aref;
	unsigned int i;
	unsigned int hi, lo;
	unsigned offset;
	unsigned int dither;

	if (boardtype.reg_type & ni_reg_m_series_mask) {
		FUNC5(dev, n_chan, list);
		return;
	}
	if (n_chan == 1 && (boardtype.reg_type != ni_reg_611x)
	    && (boardtype.reg_type != ni_reg_6143)) {
		if (devpriv->changain_state
		    && devpriv->changain_spec == list[0]) {
			/*  ready to go. */
			return;
		}
		devpriv->changain_state = 1;
		devpriv->changain_spec = list[0];
	} else {
		devpriv->changain_state = 0;
	}

	devpriv->stc_writew(dev, 1, Configuration_Memory_Clear);

	/*  Set up Calibration mode if required */
	if (boardtype.reg_type == ni_reg_6143) {
		if ((list[0] & CR_ALT_SOURCE)
		    && !devpriv->ai_calib_source_enabled) {
			/*  Strobe Relay enable bit */
			FUNC7(devpriv->ai_calib_source |
				  Calibration_Channel_6143_RelayOn,
				  Calibration_Channel_6143);
			FUNC7(devpriv->ai_calib_source,
				  Calibration_Channel_6143);
			devpriv->ai_calib_source_enabled = 1;
			FUNC4(100);	/*  Allow relays to change */
		} else if (!(list[0] & CR_ALT_SOURCE)
			   && devpriv->ai_calib_source_enabled) {
			/*  Strobe Relay disable bit */
			FUNC7(devpriv->ai_calib_source |
				  Calibration_Channel_6143_RelayOff,
				  Calibration_Channel_6143);
			FUNC7(devpriv->ai_calib_source,
				  Calibration_Channel_6143);
			devpriv->ai_calib_source_enabled = 0;
			FUNC4(100);	/*  Allow relays to change */
		}
	}

	offset = 1 << (boardtype.adbits - 1);
	for (i = 0; i < n_chan; i++) {
		if ((boardtype.reg_type != ni_reg_6143)
		    && (list[i] & CR_ALT_SOURCE)) {
			chan = devpriv->ai_calib_source;
		} else {
			chan = FUNC2(list[i]);
		}
		aref = FUNC1(list[i]);
		range = FUNC3(list[i]);
		dither = ((list[i] & CR_ALT_FILTER) != 0);

		/* fix the external/internal range differences */
		range = ni_gainlkup[boardtype.gainlkup][range];
		if (boardtype.reg_type == ni_reg_611x)
			devpriv->ai_offset[i] = offset;
		else
			devpriv->ai_offset[i] = (range & 0x100) ? 0 : offset;

		hi = 0;
		if ((list[i] & CR_ALT_SOURCE)) {
			if (boardtype.reg_type == ni_reg_611x)
				FUNC7(FUNC2(list[i]) & 0x0003,
					  Calibration_Channel_Select_611x);
		} else {
			if (boardtype.reg_type == ni_reg_611x)
				aref = AREF_DIFF;
			else if (boardtype.reg_type == ni_reg_6143)
				aref = AREF_OTHER;
			switch (aref) {
			case AREF_DIFF:
				hi |= AI_DIFFERENTIAL;
				break;
			case AREF_COMMON:
				hi |= AI_COMMON;
				break;
			case AREF_GROUND:
				hi |= AI_GROUND;
				break;
			case AREF_OTHER:
				break;
			}
		}
		hi |= FUNC0(chan);

		FUNC7(hi, Configuration_Memory_High);

		if (boardtype.reg_type != ni_reg_6143) {
			lo = range;
			if (i == n_chan - 1)
				lo |= AI_LAST_CHANNEL;
			if (dither)
				lo |= AI_DITHER;

			FUNC7(lo, Configuration_Memory_Low);
		}
	}

	/* prime the channel/gain list */
	if ((boardtype.reg_type != ni_reg_611x)
	    && (boardtype.reg_type != ni_reg_6143)) {
		FUNC6(dev);
	}
}