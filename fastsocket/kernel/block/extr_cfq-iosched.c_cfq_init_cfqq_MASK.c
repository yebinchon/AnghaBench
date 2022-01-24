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
struct cfq_queue {int /*<<< orphan*/  pid; struct cfq_data* cfqd; scalar_t__ ref; int /*<<< orphan*/  fifo; int /*<<< orphan*/  p_node; int /*<<< orphan*/  rb_node; } ;
struct cfq_data {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_queue*) ; 

__attribute__((used)) static void FUNC6(struct cfq_data *cfqd, struct cfq_queue *cfqq,
			  pid_t pid, bool is_sync)
{
	FUNC1(&cfqq->rb_node);
	FUNC1(&cfqq->p_node);
	FUNC0(&cfqq->fifo);

	cfqq->ref = 0;
	cfqq->cfqd = cfqd;

	FUNC4(cfqq);

	if (is_sync) {
		if (!FUNC2(cfqq))
			FUNC3(cfqq);
		FUNC5(cfqq);
	}
	cfqq->pid = pid;
}