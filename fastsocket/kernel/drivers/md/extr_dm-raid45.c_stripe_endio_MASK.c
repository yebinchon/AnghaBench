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
struct stripe_chunk {int dummy; } ;
struct stripe {int /*<<< orphan*/  sc; } ;
struct TYPE_2__ {unsigned int raid_devs; } ;
struct raid_set {TYPE_1__ set; } ;
struct bio_list {int dummy; } ;

/* Variables and functions */
 struct bio_list* FUNC0 (struct stripe_chunk*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct stripe_chunk* FUNC2 (struct stripe*,unsigned int) ; 
 scalar_t__ FUNC3 (struct stripe_chunk*) ; 
 scalar_t__ FUNC4 (struct stripe_chunk*) ; 
 int FUNC5 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe_chunk*) ; 
 int /*<<< orphan*/  EIO ; 
 int READ ; 
 struct raid_set* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC9 (struct raid_set*) ; 
 scalar_t__ FUNC10 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC11 (struct stripe*,struct bio_list*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void FUNC13(int rw, struct stripe *stripe)
{
	struct raid_set *rs = FUNC7(stripe->sc);
	unsigned p = rs->set.raid_devs;
	int write = (rw != READ);

	while (p--) {
		struct stripe_chunk *chunk = FUNC2(stripe, p);
		struct bio_list *bl;

		FUNC1(FUNC5(chunk));

		bl = FUNC0(chunk, rw);
		if (FUNC10(bl))
			continue;

		if (FUNC12(FUNC4(chunk) || !FUNC6(chunk))) {
			/* RAID set dead. */
			if (FUNC12(FUNC8(rs)))
				FUNC11(stripe, bl, p, -EIO);
			/* RAID set degraded. */
			else if (write)
				FUNC11(stripe, bl, p, 0);
		} else {
			FUNC1(!FUNC9(rs) && FUNC3(chunk));
			FUNC11(stripe, bl, p, 0);
		}
	}
}