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
 int B43_MACCTL_BE ; 
 int /*<<< orphan*/  B43_MMIO_MACCTL ; 
 int /*<<< orphan*/  B43_MMIO_RAM_CONTROL ; 
 int /*<<< orphan*/  B43_MMIO_RAM_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct b43_wldev *dev, u16 offset, u32 val)
{
	u32 macctl;

	FUNC0(offset % 4 != 0);

	macctl = FUNC1(dev, B43_MMIO_MACCTL);
	if (macctl & B43_MACCTL_BE)
		val = FUNC4(val);

	FUNC2(dev, B43_MMIO_RAM_CONTROL, offset);
	FUNC3();
	FUNC2(dev, B43_MMIO_RAM_DATA, val);
}