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
struct typhoon {int curvol; scalar_t__ muted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct typhoon*) ; 
 int /*<<< orphan*/  FUNC1 (struct typhoon*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct typhoon*) ; 

__attribute__((used)) static int FUNC3(struct typhoon *dev, int vol)
{
	if (dev->muted && vol != 0) {	/* user is unmuting the card */
		dev->curvol = vol;
		FUNC2(dev);
		return 0;
	}
	if (vol == dev->curvol)		/* requested volume == current */
		return 0;

	if (vol == 0) {			/* volume == 0 means mute the card */
		FUNC0(dev);
		dev->curvol = vol;
		return 0;
	}
	FUNC1(dev, vol);
	dev->curvol = vol;
	return 0;
}