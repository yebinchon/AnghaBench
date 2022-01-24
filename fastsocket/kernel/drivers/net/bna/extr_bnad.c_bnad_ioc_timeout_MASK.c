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
struct TYPE_3__ {int /*<<< orphan*/  ioc; } ;
struct TYPE_4__ {TYPE_1__ ioceth; } ;
struct bnad {int /*<<< orphan*/  bna_lock; TYPE_2__ bna; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC3(unsigned long data)
{
	struct bnad *bnad = (struct bnad *)data;
	unsigned long flags;

	FUNC1(&bnad->bna_lock, flags);
	FUNC0((void *) &bnad->bna.ioceth.ioc);
	FUNC2(&bnad->bna_lock, flags);
}