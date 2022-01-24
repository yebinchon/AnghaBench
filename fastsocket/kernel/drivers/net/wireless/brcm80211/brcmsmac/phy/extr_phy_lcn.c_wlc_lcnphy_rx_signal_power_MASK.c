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
typedef  int uint ;
typedef  int u32 ;
struct brcms_phy_lcnphy {size_t lcnphy_lastsensed_temperature; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {int /*<<< orphan*/  radio_chanspec; TYPE_1__ u; } ;
typedef  size_t s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 size_t* lcnphy_gain_index_offset_for_rssi ; 
 size_t* lcnphy_gain_table ; 
 int FUNC2 (struct brcms_phy*,int) ; 
 size_t FUNC3 (struct brcms_phy*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

s32 FUNC6(struct brcms_phy *pi, s32 gain_index)
{
	s32 gain = 0;
	s32 nominal_power_db;
	s32 log_val, gain_mismatch, desired_gain, input_power_offset_db,
	    input_power_db;
	s32 received_power, temperature;
	u32 power;
	u32 msb1, msb2, val1, val2, diff1, diff2;
	uint freq;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	received_power = FUNC3(pi, &gain_index);

	gain = lcnphy_gain_table[gain_index];

	nominal_power_db = FUNC2(pi, 0x425) >> 8;

	power = (received_power * 16);
	msb1 = FUNC1(power) - 1;
	msb2 = msb1 + 1;
	val1 = 1 << msb1;
	val2 = 1 << msb2;
	diff1 = (power - val1);
	diff2 = (val2 - power);
	if (diff1 < diff2)
		log_val = msb1;
	else
		log_val = msb2;

	log_val = log_val * 3;

	gain_mismatch = (nominal_power_db / 2) - (log_val);

	desired_gain = gain + gain_mismatch;

	input_power_offset_db = FUNC2(pi, 0x434) & 0xFF;

	if (input_power_offset_db > 127)
		input_power_offset_db -= 256;

	input_power_db = input_power_offset_db - desired_gain;

	input_power_db =
		input_power_db + lcnphy_gain_index_offset_for_rssi[gain_index];

	freq = FUNC5(FUNC0(pi->radio_chanspec));
	if ((freq > 2427) && (freq <= 2467))
		input_power_db = input_power_db - 1;

	temperature = pi_lcn->lcnphy_lastsensed_temperature;

	if ((temperature - 15) < -30)
		input_power_db =
			input_power_db +
			(((temperature - 10 - 25) * 286) >> 12) -
			7;
	else if ((temperature - 15) < 4)
		input_power_db =
			input_power_db +
			(((temperature - 10 - 25) * 286) >> 12) -
			3;
	else
		input_power_db = input_power_db +
					(((temperature - 10 - 25) * 286) >> 12);

	FUNC4(pi, 0);

	return input_power_db;
}