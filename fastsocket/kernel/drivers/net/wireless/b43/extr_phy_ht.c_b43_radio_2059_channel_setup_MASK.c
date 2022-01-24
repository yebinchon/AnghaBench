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
struct b43_phy_ht_channeltab_e_radio2059 {int /*<<< orphan*/  radio_rxtx98; int /*<<< orphan*/  radio_rxtx92; int /*<<< orphan*/  radio_rxtx6e; int /*<<< orphan*/  radio_rxtx6d; int /*<<< orphan*/  radio_rxtx6a; int /*<<< orphan*/  radio_rxtx5a; int /*<<< orphan*/  radio_rxtx58; int /*<<< orphan*/  radio_rxtx4a; int /*<<< orphan*/  radio_syn47; int /*<<< orphan*/  radio_syn43; int /*<<< orphan*/  radio_syn41; int /*<<< orphan*/  radio_syn37; int /*<<< orphan*/  radio_syn2d; int /*<<< orphan*/  radio_syn2c; int /*<<< orphan*/  radio_syn29; int /*<<< orphan*/  radio_syn28; int /*<<< orphan*/  radio_syn27; int /*<<< orphan*/  radio_syn25; int /*<<< orphan*/  radio_syn22; int /*<<< orphan*/  radio_syn17; int /*<<< orphan*/  radio_syn16; } ;

/* Variables and functions */
#define  R2059_C1 130 
#define  R2059_C2 129 
#define  R2059_C3 128 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev,
			const struct b43_phy_ht_channeltab_e_radio2059 *e)
{
	static const u16 routing[] = { R2059_C1, R2059_C2, R2059_C3, };
	u16 r;
	int core;

	FUNC2(dev, 0x16, e->radio_syn16);
	FUNC2(dev, 0x17, e->radio_syn17);
	FUNC2(dev, 0x22, e->radio_syn22);
	FUNC2(dev, 0x25, e->radio_syn25);
	FUNC2(dev, 0x27, e->radio_syn27);
	FUNC2(dev, 0x28, e->radio_syn28);
	FUNC2(dev, 0x29, e->radio_syn29);
	FUNC2(dev, 0x2c, e->radio_syn2c);
	FUNC2(dev, 0x2d, e->radio_syn2d);
	FUNC2(dev, 0x37, e->radio_syn37);
	FUNC2(dev, 0x41, e->radio_syn41);
	FUNC2(dev, 0x43, e->radio_syn43);
	FUNC2(dev, 0x47, e->radio_syn47);

	for (core = 0; core < 3; core++) {
		r = routing[core];
		FUNC2(dev, r | 0x4a, e->radio_rxtx4a);
		FUNC2(dev, r | 0x58, e->radio_rxtx58);
		FUNC2(dev, r | 0x5a, e->radio_rxtx5a);
		FUNC2(dev, r | 0x6a, e->radio_rxtx6a);
		FUNC2(dev, r | 0x6d, e->radio_rxtx6d);
		FUNC2(dev, r | 0x6e, e->radio_rxtx6e);
		FUNC2(dev, r | 0x92, e->radio_rxtx92);
		FUNC2(dev, r | 0x98, e->radio_rxtx98);
	}

	FUNC3(50);

	/* Calibration */
	FUNC0(dev, 0x2b, ~0x1);
	FUNC0(dev, 0x2e, ~0x4);
	FUNC1(dev, 0x2e, 0x4);
	FUNC1(dev, 0x2b, 0x1);

	FUNC3(300);
}