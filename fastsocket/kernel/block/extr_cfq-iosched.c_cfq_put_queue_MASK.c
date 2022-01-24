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
struct cfq_queue {scalar_t__ ref; int* allocated; struct cfq_group* orig_cfqg; struct cfq_group* cfqg; int /*<<< orphan*/  sort_list; struct cfq_data* cfqd; } ;
struct cfq_group {int dummy; } ;
struct cfq_data {struct cfq_queue* active_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct cfq_data*,struct cfq_queue*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_data*,struct cfq_queue*,char*) ; 
 int /*<<< orphan*/  cfq_pool ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_group*) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct cfq_queue*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct cfq_queue *cfqq)
{
	struct cfq_data *cfqd = cfqq->cfqd;
	struct cfq_group *cfqg, *orig_cfqg;

	FUNC0(cfqq->ref <= 0);

	cfqq->ref--;
	if (cfqq->ref)
		return;

	FUNC3(cfqd, cfqq, "put_queue");
	FUNC0(FUNC7(&cfqq->sort_list));
	FUNC0(cfqq->allocated[READ] + cfqq->allocated[WRITE]);
	cfqg = cfqq->cfqg;
	orig_cfqg = cfqq->orig_cfqg;

	if (FUNC8(cfqd->active_queue == cfqq)) {
		FUNC1(cfqd, cfqq, 0);
		FUNC5(cfqd);
	}

	FUNC0(FUNC2(cfqq));
	FUNC6(cfq_pool, cfqq);
	FUNC4(cfqg);
	if (orig_cfqg)
		FUNC4(orig_cfqg);
}