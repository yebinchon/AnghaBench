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
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct b43_wldev *dev)
{
	int i;

	for (i = 0; i < 3; i++) {
		u16 mask;
		u32 tmp = FUNC4(dev, FUNC1(26, 0xE8));

		if (0) /* FIXME */
			mask = 0x2 << (i * 4);
		else
			mask = 0;
		FUNC6(dev, FUNC3(0x108), mask);

		FUNC5(dev, FUNC0(7, 0x110 + i), tmp >> 16);
		FUNC5(dev, FUNC2(13, 0x63 + (i * 4)),
				tmp & 0xFF);
		FUNC5(dev, FUNC2(13, 0x73 + (i * 4)),
				tmp & 0xFF);
	}
}