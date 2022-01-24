#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct stripe_head {scalar_t__ bm_seq; int /*<<< orphan*/  lru; int /*<<< orphan*/  state; } ;
struct r5conf {scalar_t__ seq_write; TYPE_1__* mddev; scalar_t__ retry_read_aligned; int /*<<< orphan*/  wait_for_stripe; int /*<<< orphan*/  inactive_list; int /*<<< orphan*/  active_stripes; int /*<<< orphan*/  preread_active_stripes; int /*<<< orphan*/  handle_list; int /*<<< orphan*/  plug; int /*<<< orphan*/  bitmap_list; int /*<<< orphan*/  delayed_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ IO_THRESHOLD ; 
 int /*<<< orphan*/  STRIPE_BIT_DELAY ; 
 int /*<<< orphan*/  STRIPE_DELAYED ; 
 int /*<<< orphan*/  STRIPE_EXPANDING ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  STRIPE_PREREAD_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct stripe_head*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct r5conf *conf, struct stripe_head *sh)
{
	FUNC0(!FUNC6(&sh->lru));
	FUNC0(FUNC3(&conf->active_stripes)==0);
	if (FUNC11(STRIPE_HANDLE, &sh->state)) {
		if (FUNC11(STRIPE_DELAYED, &sh->state) &&
		    !FUNC11(STRIPE_PREREAD_ACTIVE, &sh->state)) {
			FUNC5(&sh->lru, &conf->delayed_list);
			FUNC8(&conf->plug);
		} else if (FUNC11(STRIPE_BIT_DELAY, &sh->state) &&
			   sh->bm_seq - conf->seq_write > 0) {
			FUNC5(&sh->lru, &conf->bitmap_list);
			FUNC8(&conf->plug);
		} else {
			FUNC4(STRIPE_DELAYED, &sh->state);
			FUNC4(STRIPE_BIT_DELAY, &sh->state);
			FUNC5(&sh->lru, &conf->handle_list);
		}
		FUNC7(conf->mddev->thread);
	} else {
		FUNC0(FUNC9(sh));
		if (FUNC10(STRIPE_PREREAD_ACTIVE, &sh->state))
			if (FUNC2(&conf->preread_active_stripes)
			    < IO_THRESHOLD)
				FUNC7(conf->mddev->thread);
		FUNC1(&conf->active_stripes);
		if (!FUNC11(STRIPE_EXPANDING, &sh->state)) {
			FUNC5(&sh->lru, &conf->inactive_list);
			FUNC12(&conf->wait_for_stripe);
			if (conf->retry_read_aligned)
				FUNC7(conf->mddev->thread);
		}
	}
}