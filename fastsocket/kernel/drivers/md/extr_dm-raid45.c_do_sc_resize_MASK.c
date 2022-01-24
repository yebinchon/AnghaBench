#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  stripes_to_set; int /*<<< orphan*/  stripes; } ;
struct raid_set {TYPE_1__ sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  SC_GROW ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct raid_set *rs)
{
	unsigned set = FUNC0(&rs->sc.stripes_to_set);

	if (set) {
		unsigned cur = FUNC0(&rs->sc.stripes);
		int r = (set > cur) ? FUNC2(&rs->sc, set - cur, SC_GROW) :
				      FUNC3(&rs->sc, cur - set);

		/* Flag end of resizeing if ok. */
		if (!r)
			FUNC1(&rs->sc.stripes_to_set, 0);
	}
}