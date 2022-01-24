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
struct stripe_head {int /*<<< orphan*/  count; struct r5conf* raid_conf; } ;
struct r5conf {int /*<<< orphan*/  device_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct r5conf*,struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct stripe_head *sh)
{
	struct r5conf *conf = sh->raid_conf;
	unsigned long flags;

	FUNC3(flags);
	if (FUNC0(&sh->count, &conf->device_lock)) {
		FUNC1(conf, sh);
		FUNC4(&conf->device_lock);
	}
	FUNC2(flags);
}