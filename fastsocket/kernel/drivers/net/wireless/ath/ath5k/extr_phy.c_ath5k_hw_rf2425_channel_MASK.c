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
typedef  int u32 ;
typedef  int u16 ;
struct ieee80211_channel {int center_freq; } ;
struct ath5k_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR5K_RF_BUFFER ; 
 int /*<<< orphan*/  AR5K_RF_BUFFER_CONTROL_5 ; 
 int EINVAL ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath5k_hw*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct ath5k_hw *ah,
		struct ieee80211_channel *channel)
{
	u32 data, data0, data2;
	u16 c;

	data = data0 = data2 = 0;
	c = channel->center_freq;

	if (c < 4800) {
		data0 = FUNC0((c - 2272), 8);
		data2 = 0;
	/* ? 5GHz ? */
	} else if ((c % 5) != 2 || c > 5435) {
		if (!(c % 20) && c < 5120)
			data0 = FUNC0(((c - 4800) / 20 << 2), 8);
		else if (!(c % 10))
			data0 = FUNC0(((c - 4800) / 10 << 1), 8);
		else if (!(c % 5))
			data0 = FUNC0((c - 4800) / 5, 8);
		else
			return -EINVAL;
		data2 = FUNC0(1, 2);
	} else {
		data0 = FUNC0((10 * (c - 2 - 4800)) / 25 + 1, 8);
		data2 = FUNC0(0, 2);
	}

	data = (data0 << 4) | data2 << 2 | 0x1001;

	FUNC1(ah, data & 0xff, AR5K_RF_BUFFER);
	FUNC1(ah, (data >> 8) & 0x7f, AR5K_RF_BUFFER_CONTROL_5);

	return 0;
}