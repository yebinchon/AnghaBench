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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ is_40mhz; } ;
struct b43_wldev {int /*<<< orphan*/  wl; TYPE_1__ phy; } ;
struct b43_c32 {int q; int i; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_BBCFG ; 
 int B43_NPHY_BBCFG_RSTRX ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct b43_c32 FUNC1 (int) ; 
 int FUNC2 (struct b43_wldev*,struct b43_c32*,int) ; 
 int FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct b43_c32* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_c32*) ; 

__attribute__((used)) static u16 FUNC7(struct b43_wldev *dev, u32 freq, u16 max,
					bool test)
{
	int i;
	u16 bw, len, rot, angle;
	struct b43_c32 *samples;


	bw = (dev->phy.is_40mhz) ? 40 : 20;
	len = bw << 3;

	if (test) {
		if (FUNC3(dev, B43_NPHY_BBCFG) & B43_NPHY_BBCFG_RSTRX)
			bw = 82;
		else
			bw = 80;

		if (dev->phy.is_40mhz)
			bw <<= 1;

		len = bw << 1;
	}

	samples = FUNC5(len, sizeof(struct b43_c32), GFP_KERNEL);
	if (!samples) {
		FUNC4(dev->wl, "allocation for samples generation failed\n");
		return 0;
	}
	rot = (((freq * 36) / bw) << 16) / 100;
	angle = 0;

	for (i = 0; i < len; i++) {
		samples[i] = FUNC1(angle);
		angle += rot;
		samples[i].q = FUNC0(samples[i].q * max);
		samples[i].i = FUNC0(samples[i].i * max);
	}

	i = FUNC2(dev, samples, len);
	FUNC6(samples);
	return (i < 0) ? 0 : len;
}