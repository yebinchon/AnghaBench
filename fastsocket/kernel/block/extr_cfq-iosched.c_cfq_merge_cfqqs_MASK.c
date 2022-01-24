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
struct cfq_queue {int /*<<< orphan*/  new_cfqq; } ;
struct cfq_io_context {int dummy; } ;
struct cfq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfq_data*,struct cfq_queue*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_io_context*,int /*<<< orphan*/ ,int) ; 
 struct cfq_queue* FUNC4 (struct cfq_io_context*,int) ; 

__attribute__((used)) static struct cfq_queue *
FUNC5(struct cfq_data *cfqd, struct cfq_io_context *cic,
		struct cfq_queue *cfqq)
{
	FUNC0(cfqd, cfqq, "merging with queue %p", cfqq->new_cfqq);
	FUNC3(cic, cfqq->new_cfqq, 1);
	FUNC1(cfqq->new_cfqq);
	FUNC2(cfqq);
	return FUNC4(cic, 1);
}