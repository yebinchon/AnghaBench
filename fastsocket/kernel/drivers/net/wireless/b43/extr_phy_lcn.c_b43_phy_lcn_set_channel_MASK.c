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
struct ieee80211_channel {int hw_value; } ;
struct b43_wldev {int dummy; } ;
typedef  enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int,int const) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct b43_wldev *dev,
				   struct ieee80211_channel *channel,
				   enum nl80211_channel_type channel_type)
{
	static const u16 sfo_cfg[14][2] = {
		{965, 1087}, {967, 1085}, {969, 1082}, {971, 1080}, {973, 1078},
		{975, 1076}, {977, 1073}, {979, 1071}, {981, 1069}, {983, 1067},
		{985, 1065}, {987, 1063}, {989, 1060}, {994, 1055},
	};

	FUNC3(dev, channel->hw_value);

	FUNC5(dev, 0x44a, 0x44);
	FUNC6(dev, 0x44a, 0x80);

	FUNC7(dev);
	FUNC8(1);

	FUNC0(dev);

	FUNC6(dev, 0x657, sfo_cfg[channel->hw_value - 1][0]);
	FUNC6(dev, 0x658, sfo_cfg[channel->hw_value - 1][1]);

	if (channel->hw_value == 14) {
		FUNC4(dev, 0x448, ~(0x3 << 8), (2) << 8);
		FUNC1(dev, 3);
	} else {
		FUNC4(dev, 0x448, ~(0x3 << 8), (1) << 8);
		/* brcmsmac uses filter_type 2, we follow wl with 25 */
		FUNC1(dev, 25);
	}
	/* brcmsmac uses filter_type 2, we follow wl with 0 */
	FUNC2(dev, 0);

	FUNC4(dev, 0x4eb, ~(0x7 << 3), 0x1 << 3);

	return 0;
}