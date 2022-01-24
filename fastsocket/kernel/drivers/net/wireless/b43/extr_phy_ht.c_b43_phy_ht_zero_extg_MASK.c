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
typedef  int u8 ;
typedef  int u16 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev)
{
	u8 i, j;
	u16 base[] = { 0x40, 0x60, 0x80 };

	for (i = 0; i < FUNC0(base); i++) {
		for (j = 0; j < 4; j++)
			FUNC2(dev, FUNC1(base[i] + j), 0);
	}

	for (i = 0; i < FUNC0(base); i++)
		FUNC2(dev, FUNC1(base[i] + 0xc), 0);
}