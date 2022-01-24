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
struct b43_wldev {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {int boardflags_lo; } ;

/* Variables and functions */
 int B43_BFL_FEM ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct b43_wldev *dev)
{
	FUNC3(dev, 0x11c, 0);

	FUNC2(dev, 0x43b, 0);
	FUNC2(dev, 0x43c, 0);
	FUNC2(dev, 0x44c, 0);
	FUNC2(dev, 0x4e6, 0);
	FUNC2(dev, 0x4f9, 0);
	FUNC2(dev, 0x4b0, 0);
	FUNC2(dev, 0x938, 0);
	FUNC2(dev, 0x4b0, 0);
	FUNC2(dev, 0x44e, 0);

	FUNC1(dev, 0x567, 0x03);

	FUNC1(dev, 0x44a, 0x44);
	FUNC2(dev, 0x44a, 0x80);

	if (!(dev->dev->bus_sprom->boardflags_lo & B43_BFL_FEM))
		; /* TODO */
	FUNC0(dev, 0x634, ~0xff, 0xc);
	if (dev->dev->bus_sprom->boardflags_lo & B43_BFL_FEM) {
		FUNC0(dev, 0x634, ~0xff, 0xa);
		FUNC2(dev, 0x910, 0x1);
	}

	FUNC2(dev, 0x910, 0x1);

	FUNC0(dev, 0x448, ~0x300, 0x100);
	FUNC0(dev, 0x608, ~0xff, 0x17);
	FUNC0(dev, 0x604, ~0x7ff, 0x3ea);
}