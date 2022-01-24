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
struct TYPE_2__ {size_t rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b2056_inittabs_pts {struct b2056_inittab_entry* syn; } ;
struct b2056_inittab_entry {int /*<<< orphan*/  ghz2; int /*<<< orphan*/  ghz5; } ;

/* Variables and functions */
 size_t FUNC0 (struct b2056_inittabs_pts*) ; 
 size_t B2056_SYN_PLL_CP2 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct b2056_inittabs_pts* b2056_inittabs ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,size_t,int /*<<< orphan*/ ) ; 

void FUNC3(struct b43_wldev *dev, bool ghz5)
{
	const struct b2056_inittabs_pts *pts;
	const struct b2056_inittab_entry *e;

	if (dev->phy.rev >= FUNC0(b2056_inittabs)) {
		FUNC1(1);
		return;
	}
	pts = &b2056_inittabs[dev->phy.rev];
	e = &pts->syn[B2056_SYN_PLL_CP2];

	FUNC2(dev, B2056_SYN_PLL_CP2, ghz5 ? e->ghz5 : e->ghz2);
}