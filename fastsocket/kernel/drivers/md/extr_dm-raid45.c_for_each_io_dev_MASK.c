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
struct stripe {int /*<<< orphan*/  sc; } ;
struct TYPE_2__ {unsigned int raid_devs; } ;
struct raid_set {scalar_t__ dev; TYPE_1__ set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stripe*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct raid_set* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC4(struct stripe *stripe,
			        void (*f_io)(struct stripe *stripe, unsigned p))
{
	struct raid_set *rs = FUNC2(stripe->sc);
	unsigned p, r = 0;

	for (p = 0; p < rs->set.raid_devs; p++) {
		if (FUNC3(FUNC0(stripe, p)) && !FUNC1(rs->dev + p)) {
			f_io(stripe, p);
			r++;
		}
	}

	return r;
}