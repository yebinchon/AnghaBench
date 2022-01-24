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
struct dm_target {struct delay_c* private; } ;
struct delay_c {int /*<<< orphan*/  delayed_pool; scalar_t__ dev_write; scalar_t__ dev_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_target*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kdelayd_wq ; 
 int /*<<< orphan*/  FUNC2 (struct delay_c*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dm_target *ti)
{
	struct delay_c *dc = ti->private;

	FUNC1(kdelayd_wq);

	FUNC0(ti, dc->dev_read);

	if (dc->dev_write)
		FUNC0(ti, dc->dev_write);

	FUNC3(dc->delayed_pool);
	FUNC2(dc);
}