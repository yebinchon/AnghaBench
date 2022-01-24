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
struct linear_c {int /*<<< orphan*/  dev; } ;
struct dm_target {scalar_t__ private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct linear_c*) ; 

__attribute__((used)) static void FUNC2(struct dm_target *ti)
{
	struct linear_c *lc = (struct linear_c *) ti->private;

	FUNC0(ti, lc->dev);
	FUNC1(lc);
}