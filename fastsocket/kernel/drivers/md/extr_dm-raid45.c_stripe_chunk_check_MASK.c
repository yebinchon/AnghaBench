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
struct stripe_chunk {int dummy; } ;
struct stripe {int /*<<< orphan*/  sc; } ;
struct raid_set {unsigned int dev; scalar_t__ stats; } ;

/* Variables and functions */
 struct stripe_chunk* FUNC0 (struct stripe*,unsigned int) ; 
 scalar_t__ FUNC1 (struct stripe_chunk*) ; 
 scalar_t__ FUNC2 (struct stripe_chunk*) ; 
 scalar_t__ FUNC3 (struct stripe_chunk*) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 struct raid_set* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_CHUNK_LOCKED ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static struct stripe_chunk *
FUNC7(struct stripe *stripe, unsigned p, unsigned *chunks_uptodate)
{
	struct raid_set *rs = FUNC5(stripe->sc);
	struct stripe_chunk *chunk = FUNC0(stripe, p);

	/* Can't access active chunks. */
	if (FUNC2(chunk)) {
		/* REMOVEME: statistics. */
		FUNC6(rs->stats + S_CHUNK_LOCKED);
		return NULL;
	}

	/* Can't access broken devive. */
	if (FUNC1(chunk) || FUNC4(rs->dev + p))
		return NULL;

	/* Can access uptodate chunks. */
	if (FUNC3(chunk)) {
		(*chunks_uptodate)++;
		return NULL;
	}

	return chunk;
}