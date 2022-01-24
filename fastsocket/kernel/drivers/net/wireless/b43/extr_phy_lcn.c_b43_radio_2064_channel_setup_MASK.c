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
typedef  int u16 ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int,int) ; 
 int FUNC1 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct b43_wldev *dev)
{
	u16 save[2];

	FUNC2(dev, 0x09d, 0x4);
	FUNC3(dev, 0x09e, 0xf);

	/* Channel specific values in theory, in practice always the same */
	FUNC3(dev, 0x02a, 0xb);
	FUNC0(dev, 0x030, ~0x3, 0xa);
	FUNC0(dev, 0x091, ~0x3, 0);
	FUNC0(dev, 0x038, ~0xf, 0x7);
	FUNC0(dev, 0x030, ~0xc, 0x8);
	FUNC0(dev, 0x05e, ~0xf, 0x8);
	FUNC0(dev, 0x05e, ~0xf0, 0x80);
	FUNC3(dev, 0x06c, 0x80);

	save[0] = FUNC1(dev, 0x044);
	save[1] = FUNC1(dev, 0x12b);

	FUNC2(dev, 0x044, 0x7);
	FUNC2(dev, 0x12b, 0xe);

	/* TODO */

	FUNC3(dev, 0x040, 0xfb);

	FUNC3(dev, 0x041, 0x9a);
	FUNC3(dev, 0x042, 0xa3);
	FUNC3(dev, 0x043, 0x0c);

	/* TODO */

	FUNC2(dev, 0x044, 0x0c);
	FUNC4(1);

	FUNC3(dev, 0x044, save[0]);
	FUNC3(dev, 0x12b, save[1]);

	if (dev->phy.rev == 1) {
		/* brcmsmac uses outdated 0x3 for 0x038 */
		FUNC3(dev, 0x038, 0x0);
		FUNC3(dev, 0x091, 0x7);
	}
}