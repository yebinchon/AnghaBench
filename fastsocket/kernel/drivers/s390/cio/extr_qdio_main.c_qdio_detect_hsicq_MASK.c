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
struct qdio_q {int dummy; } ;
struct qdio_output_q {int dummy; } ;
struct qdio_irq {int nr_input_qs; int nr_output_qs; TYPE_2__** output_qs; struct qdio_q** input_qs; } ;
struct TYPE_3__ {struct qdio_output_q out; } ;
struct TYPE_4__ {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ QDIO_IQDIO_QFMT ; 
 int /*<<< orphan*/  FUNC1 (struct qdio_output_q*) ; 
 scalar_t__ FUNC2 (struct qdio_output_q*) ; 
 scalar_t__ FUNC3 (struct qdio_q*) ; 

__attribute__((used)) static inline void FUNC4(struct qdio_irq *irq_ptr)
{
	int use_cq;
	int q;

	if (irq_ptr->nr_input_qs <= 1) {
		use_cq = 0;
	} else {
		use_cq = 1;
		for (q = 0; q < irq_ptr->nr_input_qs; ++q) {
			struct qdio_q *iq = irq_ptr->input_qs[q];
			if (FUNC3(iq) != QDIO_IQDIO_QFMT) {
				use_cq = 0;
				break;
			}
		}
	}

	for (q = 0; q < irq_ptr->nr_output_qs; ++q) {
		struct qdio_output_q *oq = &irq_ptr->output_qs[q]->u.out;

		if (use_cq) {
			if (FUNC2(oq)) {
				use_cq = 0;
				q = -1;
				continue;
			}
		} else {
			FUNC1(oq);
		}
	}

	FUNC0("use_cq:%d", use_cq);
}