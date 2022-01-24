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
struct stripe_cache {int lists; } ;
struct stripe {struct list_head* lists; struct stripe_cache* sc; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int LIST_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,int) ; 
 scalar_t__ FUNC2 (struct list_head*) ; 

__attribute__((used)) static void FUNC3(struct stripe *stripe)
{
	struct stripe_cache *sc = stripe->sc;
	struct list_head *lh = stripe->lists + LIST_FLUSH;

	if (!FUNC0(stripe) && FUNC2(lh))
		FUNC1(lh, sc->lists + LIST_FLUSH);
}