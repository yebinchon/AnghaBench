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
struct zoltrix {int muted; int /*<<< orphan*/  lock; scalar_t__ io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct zoltrix *zol)
{
	zol->muted = 1;
	FUNC1(&zol->lock);
	FUNC3(0, zol->io);
	FUNC3(0, zol->io);
	FUNC0(zol->io + 3);            /* Zoltrix needs to be read to confirm */
	FUNC2(&zol->lock);
}