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
struct dm_delay_info {unsigned long expires; int /*<<< orphan*/  list; struct bio* bio; struct delay_c* context; } ;
struct delay_c {int /*<<< orphan*/  delayed_bios; int /*<<< orphan*/  reads; int /*<<< orphan*/  writes; int /*<<< orphan*/  delayed_pool; int /*<<< orphan*/  may_delay; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int HZ ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  delayed_bios_lock ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dm_delay_info* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct delay_c*,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct delay_c *dc, int delay, struct bio *bio)
{
	struct dm_delay_info *delayed;
	unsigned long expires = 0;

	if (!delay || !FUNC0(&dc->may_delay))
		return 1;

	delayed = FUNC3(dc->delayed_pool, GFP_NOIO);

	delayed->context = dc;
	delayed->bio = bio;
	delayed->expires = expires = jiffies + (delay * HZ / 1000);

	FUNC4(&delayed_bios_lock);

	if (FUNC1(bio) == WRITE)
		dc->writes++;
	else
		dc->reads++;

	FUNC2(&delayed->list, &dc->delayed_bios);

	FUNC5(&delayed_bios_lock);

	FUNC6(dc, expires);

	return 0;
}