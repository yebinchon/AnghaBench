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
struct task_struct {int /*<<< orphan*/  io_context; } ;
struct request {int dummy; } ;
struct cfq_queue {int /*<<< orphan*/  sort_list; } ;
struct cfq_io_context {int dummy; } ;
struct cfq_data {int dummy; } ;
struct bio {scalar_t__ bi_sector; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 struct cfq_io_context* FUNC2 (struct cfq_data*,int /*<<< orphan*/ ) ; 
 struct cfq_queue* FUNC3 (struct cfq_io_context*,int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 struct request* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static struct request *
FUNC5(struct cfq_data *cfqd, struct bio *bio)
{
	struct task_struct *tsk = current;
	struct cfq_io_context *cic;
	struct cfq_queue *cfqq;

	cic = FUNC2(cfqd, tsk->io_context);
	if (!cic)
		return NULL;

	cfqq = FUNC3(cic, FUNC1(bio));
	if (cfqq) {
		sector_t sector = bio->bi_sector + FUNC0(bio);

		return FUNC4(&cfqq->sort_list, sector);
	}

	return NULL;
}