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
struct zoltrix {int curvol; int /*<<< orphan*/  lock; int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct zoltrix *zol)
{
	int x1, x2;

	FUNC2(&zol->lock);

	FUNC4(0x00, zol->io);
	FUNC4(zol->curvol, zol->io);
	FUNC1(20);

	x1 = FUNC0(zol->io);
	FUNC1(10);
	x2 = FUNC0(zol->io);

	FUNC3(&zol->lock);

	return x1 == x2 && x1 == 0xcf;
}