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
struct b43legacy_wldev {unsigned int periodic_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 

__attribute__((used)) static void FUNC4(struct b43legacy_wldev *dev)
{
	unsigned int state;

	state = dev->periodic_state;
	if (state % 8 == 0)
		FUNC0(dev);
	if (state % 4 == 0)
		FUNC3(dev);
	if (state % 2 == 0)
		FUNC2(dev);
	FUNC1(dev);
}