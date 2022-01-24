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
struct stripe_head {int /*<<< orphan*/  count; } ;
struct r5conf {int /*<<< orphan*/  active_stripes; int /*<<< orphan*/  slab_cache; int /*<<< orphan*/  device_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct stripe_head* FUNC3 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct r5conf *conf)
{
	struct stripe_head *sh;

	FUNC6(&conf->device_lock);
	sh = FUNC3(conf);
	FUNC7(&conf->device_lock);
	if (!sh)
		return 0;
	FUNC0(FUNC2(&sh->count));
	FUNC5(sh);
	FUNC4(conf->slab_cache, sh);
	FUNC1(&conf->active_stripes);
	return 1;
}