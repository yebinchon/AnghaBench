#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct TYPE_6__ {int recover; } ;
struct stripe {TYPE_1__ io; TYPE_3__ idx; int /*<<< orphan*/  sc; } ;
struct TYPE_5__ {int raid_devs; } ;
struct raid_set {scalar_t__ stats; TYPE_2__ set; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct stripe*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct raid_set* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct raid_set*) ; 
 scalar_t__ S_RECONSTRUCT_DEV ; 
 scalar_t__ S_RECONSTRUCT_EI ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct stripe*,int) ; 

__attribute__((used)) static void FUNC8(struct stripe *stripe)
{
	struct raid_set *rs = FUNC3(stripe->sc);
	int p = rs->set.raid_devs, pr = stripe->idx.recover;

	FUNC0(pr < 0);

	/* Check if all but the chunk to be reconstructed are uptodate. */
	while (p--)
		FUNC0(p != pr && !FUNC2(FUNC1(stripe, p)));

	/* REMOVEME: statistics. */
	FUNC5(rs->stats + (FUNC4(rs) ? S_RECONSTRUCT_EI :
						 S_RECONSTRUCT_DEV));
	/* Zero chunk to be reconstructed. */
	FUNC7(stripe, pr);
	FUNC6(stripe, stripe->io.size, 0, pr);
}