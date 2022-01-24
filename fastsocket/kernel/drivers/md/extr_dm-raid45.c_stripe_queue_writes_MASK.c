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
struct bio_list {int dummy; } ;
struct TYPE_3__ {unsigned int raid_devs; } ;
struct TYPE_4__ {TYPE_1__ set; } ;

/* Variables and functions */
 struct bio_list* FUNC0 (struct stripe_chunk*,int /*<<< orphan*/ ) ; 
 struct stripe_chunk* FUNC1 (struct stripe*,unsigned int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  WRITE_QUEUED ; 
 int /*<<< orphan*/  FUNC4 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio_list*,struct bio_list*) ; 

__attribute__((used)) static int FUNC7(struct stripe *stripe)
{
	int r = 0;
	unsigned p = FUNC2(stripe->sc)->set.raid_devs;

	while (p--) {
		struct stripe_chunk *chunk = FUNC1(stripe, p);
		struct bio_list *write = FUNC0(chunk, WRITE);

		if (!FUNC4(write)) {
			FUNC6(FUNC0(chunk, WRITE_QUEUED), write);
			FUNC5(write);
FUNC3(chunk);
			r = 1;
		}
	}

	return r;
}