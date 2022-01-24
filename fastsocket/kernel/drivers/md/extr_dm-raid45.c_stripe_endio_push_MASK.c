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
struct stripe_cache {int /*<<< orphan*/ * locks; struct list_head* lists; } ;
struct stripe {struct list_head* lists; struct stripe_cache* sc; } ;
struct list_head {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int LIST_ENDIO ; 
 int LOCK_ENDIO ; 
 int /*<<< orphan*/  FUNC0 (struct stripe_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,struct list_head*) ; 
 scalar_t__ FUNC2 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct stripe *stripe)
{
	unsigned long flags;
	struct stripe_cache *sc = stripe->sc;
	struct list_head *stripe_list = stripe->lists + LIST_ENDIO,
			 *sc_list = sc->lists + LIST_ENDIO;
	spinlock_t *lock = sc->locks + LOCK_ENDIO;

	/* This runs in parallel with do_endios(). */
	FUNC3(lock, flags);
	if (FUNC2(stripe_list))
		FUNC1(stripe_list, sc_list);
	FUNC4(lock, flags);

	FUNC5(FUNC0(sc)); /* Wake myself. */
}