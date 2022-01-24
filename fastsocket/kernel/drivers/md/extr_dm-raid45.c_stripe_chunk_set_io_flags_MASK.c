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
struct TYPE_3__ {int recover; } ;
struct stripe {int /*<<< orphan*/  sc; TYPE_1__ idx; } ;
struct TYPE_4__ {scalar_t__ stats; } ;

/* Variables and functions */
 struct stripe_chunk* FUNC0 (struct stripe*,int) ; 
 int EPERM ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_PROHIBITCHUNKIO ; 
 int /*<<< orphan*/  FUNC2 (struct stripe*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct stripe_chunk*) ; 

__attribute__((used)) static int FUNC5(struct stripe *stripe, int pr)
{
	struct stripe_chunk *chunk = FUNC0(stripe, pr);

	/*
	 * Allow io on all chunks but the indexed one,
	 * because we're either degraded or prohibit it
	 * on the one for later reconstruction.
	 */
	/* Includes ClearChunkIo(), ClearChunkUptodate(). */
	FUNC4(chunk);
	stripe->idx.recover = pr;
	FUNC2(stripe);

	/* REMOVEME: statistics. */
	FUNC3(FUNC1(stripe->sc)->stats + S_PROHIBITCHUNKIO);
	return -EPERM;
}