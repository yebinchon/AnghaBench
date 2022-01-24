#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_6__ {scalar_t__* spurChans; } ;
struct TYPE_5__ {scalar_t__* spurChans; } ;
struct ar9300_eeprom {TYPE_3__ modalHeader2G; TYPE_2__ modalHeader5G; } ;
struct TYPE_4__ {struct ar9300_eeprom ar9300_eep; } ;
struct ath_hw {TYPE_1__ eeprom; } ;
struct ath9k_channel {int channel; } ;

/* Variables and functions */
 unsigned int AR_EEPROM_MODAL_SPURS ; 
 int /*<<< orphan*/  AR_PHY_GC_DYN2040_PRI_CH ; 
 int /*<<< orphan*/  AR_PHY_GEN_CTRL ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath9k_channel*) ; 
 scalar_t__ FUNC2 (struct ath9k_channel*) ; 
 int FUNC3 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hw*,struct ath9k_channel*,int,int,int) ; 
 int FUNC8 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC9(struct ath_hw *ah,
					 struct ath9k_channel *chan)
{
	int synth_freq;
	int range = 10;
	int freq_offset = 0;
	int mode;
	u8* spurChansPtr;
	unsigned int i;
	struct ar9300_eeprom *eep = &ah->eeprom.ar9300_eep;

	if (FUNC1(chan)) {
		spurChansPtr = &(eep->modalHeader5G.spurChans[0]);
		mode = 0;
	}
	else {
		spurChansPtr = &(eep->modalHeader2G.spurChans[0]);
		mode = 1;
	}

	if (spurChansPtr[0] == 0)
		return; /* No spur in the mode */

	if (FUNC2(chan)) {
		range = 19;
		if (FUNC3(ah, AR_PHY_GEN_CTRL,
				   AR_PHY_GC_DYN2040_PRI_CH) == 0x0)
			synth_freq = chan->channel - 10;
		else
			synth_freq = chan->channel + 10;
	} else {
		range = 10;
		synth_freq = chan->channel;
	}

	FUNC6(ah);

	for (i = 0; i < AR_EEPROM_MODAL_SPURS && spurChansPtr[i]; i++) {
		freq_offset = FUNC8(spurChansPtr[i], mode);
		freq_offset -= synth_freq;
		if (FUNC4(freq_offset) < range) {
			FUNC7(ah, chan, freq_offset,
						 range, synth_freq);

			if (FUNC0(ah) && (i < 4)) {
				freq_offset = FUNC8(spurChansPtr[i + 1],
								 mode);
				freq_offset -= synth_freq;
				if (FUNC4(freq_offset) < range)
					FUNC5(ah, freq_offset);
			}

			break;
		}
	}
}