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
struct zoltrix {int curvol; int /*<<< orphan*/  lock; scalar_t__ io; scalar_t__ muted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct zoltrix *zol, int vol)
{
	zol->curvol = vol;
	if (zol->muted)
		return 0;

	FUNC2(&zol->lock);
	if (vol == 0) {
		FUNC4(0, zol->io);
		FUNC4(0, zol->io);
		FUNC0(zol->io + 3);    /* Zoltrix needs to be read to confirm */
		FUNC3(&zol->lock);
		return 0;
	}

	FUNC4(zol->curvol-1, zol->io);
	FUNC1(10);
	FUNC0(zol->io + 2);
	FUNC3(&zol->lock);
	return 0;
}