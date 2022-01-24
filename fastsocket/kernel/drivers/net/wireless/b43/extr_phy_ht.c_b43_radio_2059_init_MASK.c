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
typedef  size_t u16 ;
struct b43_wldev {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 size_t FUNC0 (size_t const*) ; 
 int R2059_ALL ; 
 size_t const R2059_C1 ; 
 size_t const R2059_C2 ; 
 size_t const R2059_C3 ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,size_t const,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,size_t const,int,int) ; 
 int FUNC3 (struct b43_wldev*,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,size_t const,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,size_t const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct b43_wldev *dev)
{
	const u16 routing[] = { R2059_C1, R2059_C2, R2059_C3 };
	const u16 radio_values[3][2] = {
		{ 0x61, 0xE9 }, { 0x69, 0xD5 }, { 0x73, 0x99 },
	};
	u16 i, j;

	FUNC5(dev, R2059_ALL | 0x51, 0x0070);
	FUNC5(dev, R2059_ALL | 0x5a, 0x0003);

	for (i = 0; i < FUNC0(routing); i++)
		FUNC4(dev, routing[i] | 0x146, 0x3);

	FUNC4(dev, 0x2e, 0x0078);
	FUNC4(dev, 0xc0, 0x0080);
	FUNC7(2);
	FUNC1(dev, 0x2e, ~0x0078);
	FUNC1(dev, 0xc0, ~0x0080);

	if (1) { /* FIXME */
		FUNC4(dev, R2059_C3 | 0x4, 0x1);
		FUNC8(10);
		FUNC4(dev, R2059_C3 | 0x0BF, 0x1);
		FUNC2(dev, R2059_C3 | 0x19B, 0x3, 0x2);

		FUNC4(dev, R2059_C3 | 0x4, 0x2);
		FUNC8(100);
		FUNC1(dev, R2059_C3 | 0x4, ~0x2);

		for (i = 0; i < 10000; i++) {
			if (FUNC3(dev, R2059_C3 | 0x145) & 1) {
				i = 0;
				break;
			}
			FUNC8(100);
		}
		if (i)
			FUNC6(dev->wl, "radio 0x945 timeout\n");

		FUNC1(dev, R2059_C3 | 0x4, ~0x1);
		FUNC4(dev, 0xa, 0x60);

		for (i = 0; i < 3; i++) {
			FUNC5(dev, 0x17F, radio_values[i][0]);
			FUNC5(dev, 0x13D, 0x6E);
			FUNC5(dev, 0x13E, radio_values[i][1]);
			FUNC5(dev, 0x13C, 0x55);

			for (j = 0; j < 10000; j++) {
				if (FUNC3(dev, 0x140) & 2) {
					j = 0;
					break;
				}
				FUNC8(500);
			}
			if (j)
				FUNC6(dev->wl, "radio 0x140 timeout\n");

			FUNC5(dev, 0x13C, 0x15);
		}

		FUNC1(dev, 0x17F, ~0x1);
	}

	FUNC1(dev, 0x11, ~0x0008);
}