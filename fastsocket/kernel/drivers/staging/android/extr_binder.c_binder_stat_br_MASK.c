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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_5__ {int /*<<< orphan*/ * br; } ;
struct binder_thread {TYPE_2__ stats; } ;
struct TYPE_4__ {int /*<<< orphan*/ * br; } ;
struct binder_proc {TYPE_1__ stats; } ;
struct TYPE_6__ {int /*<<< orphan*/ * br; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ binder_stats ; 

void FUNC2(struct binder_proc *proc, struct binder_thread *thread,
		    uint32_t cmd)
{
	if (FUNC1(cmd) < FUNC0(binder_stats.br)) {
		binder_stats.br[FUNC1(cmd)]++;
		proc->stats.br[FUNC1(cmd)]++;
		thread->stats.br[FUNC1(cmd)]++;
	}
}