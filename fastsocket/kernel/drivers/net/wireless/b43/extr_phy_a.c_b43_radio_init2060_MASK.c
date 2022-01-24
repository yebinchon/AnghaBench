#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* ops; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* get_default_chan ) (struct b43_wldev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int,int) ; 
 int FUNC4 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 

__attribute__((used)) static void FUNC8(struct b43_wldev *dev)
{
	FUNC5(dev, 0x0004, 0x00C0);
	FUNC5(dev, 0x0005, 0x0008);
	FUNC5(dev, 0x0009, 0x0040);
	FUNC5(dev, 0x0005, 0x00AA);
	FUNC5(dev, 0x0032, 0x008F);
	FUNC5(dev, 0x0006, 0x008F);
	FUNC5(dev, 0x0034, 0x008F);
	FUNC5(dev, 0x002C, 0x0007);
	FUNC5(dev, 0x0082, 0x0080);
	FUNC5(dev, 0x0080, 0x0000);
	FUNC5(dev, 0x003F, 0x00DA);
	FUNC2(dev, 0x0005, ~0x0008);
	FUNC2(dev, 0x0081, ~0x0010);
	FUNC2(dev, 0x0081, ~0x0020);
	FUNC2(dev, 0x0081, ~0x0020);
	FUNC6(1);		/* delay 400usec */

	FUNC3(dev, 0x0081, ~0x0020, 0x0010);
	FUNC6(1);		/* delay 400usec */

	FUNC3(dev, 0x0005, ~0x0008, 0x0008);
	FUNC2(dev, 0x0085, ~0x0010);
	FUNC2(dev, 0x0005, ~0x0008);
	FUNC2(dev, 0x0081, ~0x0040);
	FUNC3(dev, 0x0081, ~0x0040, 0x0040);
	FUNC5(dev, 0x0005,
			  (FUNC4(dev, 0x0081) & ~0x0008) | 0x0008);
	FUNC1(dev, 0x0063, 0xDDC6);
	FUNC1(dev, 0x0069, 0x07BE);
	FUNC1(dev, 0x006A, 0x0000);

	FUNC0(dev, dev->phy.ops->get_default_chan(dev));

	FUNC6(1);
}