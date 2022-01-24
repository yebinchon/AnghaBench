#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct stripe_chunk {int dummy; } ;
struct stripe {int /*<<< orphan*/  sc; } ;
struct TYPE_3__ {unsigned int raid_devs; } ;
struct TYPE_4__ {TYPE_1__ set; } ;

/* Variables and functions */
 struct stripe_chunk* FUNC0 (struct stripe*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct stripe_chunk*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct stripe_chunk*) ; 

__attribute__((used)) static void FUNC4(struct stripe *stripe)
{
	unsigned p = FUNC2(stripe->sc)->set.raid_devs;
	struct stripe_chunk *chunk;

	while (p--) {
		chunk = FUNC0(stripe, p);

		if (FUNC3(chunk))
			FUNC1(chunk);
	}
}