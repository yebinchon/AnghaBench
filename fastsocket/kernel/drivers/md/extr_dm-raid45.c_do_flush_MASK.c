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
struct stripe {int dummy; } ;
struct raid_set {int /*<<< orphan*/  sc; } ;

/* Variables and functions */
 struct stripe* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct stripe*) ; 

__attribute__((used)) static int FUNC2(struct raid_set *rs)
{
	int r = 0;
	struct stripe *stripe;

	while ((stripe = FUNC0(&rs->sc)))
		r += FUNC1(stripe); /* Read/write stripe. */

	return r;
}