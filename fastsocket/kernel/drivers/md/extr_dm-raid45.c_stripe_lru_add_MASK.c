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
struct stripe {TYPE_1__* sc; struct list_head* lists; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int lists; } ;

/* Variables and functions */
 int LIST_LRU ; 
 int /*<<< orphan*/  FUNC0 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*,int) ; 
 scalar_t__ FUNC2 (struct list_head*) ; 

__attribute__((used)) static void FUNC3(struct stripe *stripe)
{
	if (!FUNC0(stripe)) {
		struct list_head *lh = stripe->lists + LIST_LRU;

		if (FUNC2(lh))
			FUNC1(lh, stripe->sc->lists + LIST_LRU);
	}
}