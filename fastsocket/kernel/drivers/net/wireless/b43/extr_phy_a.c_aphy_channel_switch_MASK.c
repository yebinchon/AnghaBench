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
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int,int) ; 
 int FUNC2 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int) ; 
 int FUNC6 (unsigned int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct b43_wldev *dev, unsigned int channel)
{
	u16 freq, r8, tmp;

	freq = FUNC6(channel);

	r8 = FUNC2(dev, 0x0008);
	FUNC5(dev, 0x03F0, freq);
	FUNC4(dev, 0x0008, r8);

	//TODO: write max channel TX power? to Radio 0x2D
	tmp = FUNC2(dev, 0x002E);
	tmp &= 0x0080;
	//TODO: OR tmp with the Power out estimation for this channel?
	FUNC4(dev, 0x002E, tmp);

	if (freq >= 4920 && freq <= 5500) {
		/*
		 * r8 = (((freq * 15 * 0xE1FC780F) >> 32) / 29) & 0x0F;
		 *    = (freq * 0.025862069
		 */
		r8 = 3 * freq / 116;	/* is equal to r8 = freq * 0.025862 */
	}
	FUNC4(dev, 0x0007, (r8 << 4) | r8);
	FUNC4(dev, 0x0020, (r8 << 4) | r8);
	FUNC4(dev, 0x0021, (r8 << 4) | r8);
	FUNC1(dev, 0x0022, 0x000F, (r8 << 4));
	FUNC4(dev, 0x002A, (r8 << 4));
	FUNC4(dev, 0x002B, (r8 << 4));
	FUNC1(dev, 0x0008, 0x00F0, (r8 << 4));
	FUNC1(dev, 0x0029, 0xFF0F, 0x00B0);
	FUNC4(dev, 0x0035, 0x00AA);
	FUNC4(dev, 0x0036, 0x0085);
	FUNC1(dev, 0x003A, 0xFF20, FUNC7(freq));
	FUNC0(dev, 0x003D, 0x00FF);
	FUNC1(dev, 0x0081, 0xFF7F, 0x0080);
	FUNC0(dev, 0x0035, 0xFFEF);
	FUNC1(dev, 0x0035, 0xFFEF, 0x0010);
	FUNC3(dev);
	//TODO: TSSI2dbm workaround
//FIXME	b43_phy_xmitpower(dev);
}