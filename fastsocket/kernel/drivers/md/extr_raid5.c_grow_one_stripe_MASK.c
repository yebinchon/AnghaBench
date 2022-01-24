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
struct stripe_head {int /*<<< orphan*/  lru; int /*<<< orphan*/  count; int /*<<< orphan*/  stripe_lock; int /*<<< orphan*/  lock; struct r5conf* raid_conf; } ;
struct r5conf {int /*<<< orphan*/  active_stripes; int /*<<< orphan*/  slab_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct stripe_head*) ; 
 struct stripe_head* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct r5conf *conf)
{
	struct stripe_head *sh;
	sh = FUNC5(conf->slab_cache, GFP_KERNEL);
	if (!sh)
		return 0;

	sh->raid_conf = conf;

	FUNC8(&sh->lock);
	FUNC8(&sh->stripe_lock);

	if (FUNC3(sh)) {
		FUNC7(sh);
		FUNC4(conf->slab_cache, sh);
		return 0;
	}
	/* we just created an active stripe so... */
	FUNC2(&sh->count, 1);
	FUNC1(&conf->active_stripes);
	FUNC0(&sh->lru);
	FUNC6(sh);
	return 1;
}