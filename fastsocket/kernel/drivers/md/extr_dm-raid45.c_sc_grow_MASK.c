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
struct stripe_cache {int /*<<< orphan*/  stripes; int /*<<< orphan*/  mem_cache_client; } ;
struct stripe {int dummy; } ;
typedef  enum grow { ____Placeholder_grow } grow ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct stripe*) ; 
 int FUNC2 (struct stripe_cache*) ; 
 struct stripe* FUNC3 (struct stripe_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stripe*) ; 

__attribute__((used)) static int FUNC5(struct stripe_cache *sc, unsigned stripes, enum grow grow)
{
	int r = 0;

	/* Try to allocate this many (additional) stripes. */
	while (stripes--) {
		struct stripe *stripe =
			FUNC3(sc, sc->mem_cache_client, grow);

		if (FUNC1(stripe)) {
			FUNC4(stripe);
			FUNC0(&sc->stripes);
		} else {
			r = -ENOMEM;
			break;
		}
	}

	return r ? r : FUNC2(sc);
}