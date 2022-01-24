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
struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;

/* Variables and functions */
 int B43_ANTENNA_AUTO0 ; 
 int B43_ANTENNA_AUTO1 ; 
 int B43_HF_ANTDIVHELP ; 
 int /*<<< orphan*/  B43_PHY_ADIVRELATED ; 
 int /*<<< orphan*/  B43_PHY_ANTDWELL ; 
 int B43_PHY_ANTDWELL_AUTODIV1 ; 
 int /*<<< orphan*/  B43_PHY_ANTWRSETT ; 
 int B43_PHY_ANTWRSETT_ARXDIV ; 
 int /*<<< orphan*/  B43_PHY_BBANDCFG ; 
 int B43_PHY_BBANDCFG_RXANT ; 
 int B43_PHY_BBANDCFG_RXANT_SHIFT ; 
 int /*<<< orphan*/  B43_PHY_DIVSRCHGAINBACK ; 
 int /*<<< orphan*/  B43_PHY_OFDM61 ; 
 int B43_PHY_OFDM61_10 ; 
 int /*<<< orphan*/  B43_PHY_OFDM9B ; 
 int FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev, int antenna)
{
	struct b43_phy *phy = &dev->phy;
	u16 tmp;
	int autodiv = 0;

	if (antenna == B43_ANTENNA_AUTO0 || antenna == B43_ANTENNA_AUTO1)
		autodiv = 1;

	FUNC1(dev, FUNC0(dev) & ~B43_HF_ANTDIVHELP);

	FUNC3(dev, B43_PHY_BBANDCFG, ~B43_PHY_BBANDCFG_RXANT,
			(autodiv ? B43_ANTENNA_AUTO1 : antenna) <<
			B43_PHY_BBANDCFG_RXANT_SHIFT);

	if (autodiv) {
		tmp = FUNC4(dev, B43_PHY_ANTDWELL);
		if (antenna == B43_ANTENNA_AUTO1)
			tmp &= ~B43_PHY_ANTDWELL_AUTODIV1;
		else
			tmp |= B43_PHY_ANTDWELL_AUTODIV1;
		FUNC6(dev, B43_PHY_ANTDWELL, tmp);
	}

	tmp = FUNC4(dev, B43_PHY_ANTWRSETT);
	if (autodiv)
		tmp |= B43_PHY_ANTWRSETT_ARXDIV;
	else
		tmp &= ~B43_PHY_ANTWRSETT_ARXDIV;
	FUNC6(dev, B43_PHY_ANTWRSETT, tmp);

	if (autodiv)
		FUNC5(dev, B43_PHY_ANTWRSETT, B43_PHY_ANTWRSETT_ARXDIV);
	else {
		FUNC2(dev, B43_PHY_ANTWRSETT,
			     B43_PHY_ANTWRSETT_ARXDIV);
	}

	if (phy->rev >= 2) {
		FUNC5(dev, B43_PHY_OFDM61, B43_PHY_OFDM61_10);
		FUNC3(dev, B43_PHY_DIVSRCHGAINBACK, 0xFF00, 0x15);

		if (phy->rev == 2)
			FUNC6(dev, B43_PHY_ADIVRELATED, 8);
		else
			FUNC3(dev, B43_PHY_ADIVRELATED, 0xFF00, 8);
	}
	if (phy->rev >= 6)
		FUNC6(dev, B43_PHY_OFDM9B, 0xDC);

	FUNC1(dev, FUNC0(dev) | B43_HF_ANTDIVHELP);
}