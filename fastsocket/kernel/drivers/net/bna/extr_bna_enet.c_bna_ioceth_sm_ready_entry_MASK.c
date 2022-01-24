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
struct bna_ioceth {TYPE_1__* bna; } ;
struct TYPE_2__ {int /*<<< orphan*/  bnad; int /*<<< orphan*/  stats_mod; int /*<<< orphan*/  enet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bna_ioceth *ioceth)
{
	FUNC0(&ioceth->bna->enet);
	FUNC1(&ioceth->bna->stats_mod);
	FUNC2(ioceth->bna->bnad);
}