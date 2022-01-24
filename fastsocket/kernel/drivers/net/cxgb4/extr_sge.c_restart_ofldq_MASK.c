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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct sge_ofld_txq {TYPE_1__ sendq; scalar_t__ full; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sge_ofld_txq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(unsigned long data)
{
	struct sge_ofld_txq *q = (struct sge_ofld_txq *)data;

	FUNC1(&q->sendq.lock);
	q->full = 0;            /* the queue actually is completely empty now */
	FUNC0(q);
	FUNC2(&q->sendq.lock);
}