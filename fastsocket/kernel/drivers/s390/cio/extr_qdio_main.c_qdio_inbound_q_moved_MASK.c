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
struct TYPE_3__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_4__ {TYPE_1__ in; } ;
struct qdio_q {int last_move; TYPE_2__ u; int /*<<< orphan*/  irq_ptr; scalar_t__ qdio_error; } ;

/* Variables and functions */
 int /*<<< orphan*/  MACHINE_IS_VM ; 
 int FUNC0 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct qdio_q *q)
{
	int bufnr;

	bufnr = FUNC0(q);

	if ((bufnr != q->last_move) || q->qdio_error) {
		q->last_move = bufnr;
		if (!FUNC2(q->irq_ptr) && !MACHINE_IS_VM)
			q->u.in.timestamp = FUNC1();
		return 1;
	} else
		return 0;
}