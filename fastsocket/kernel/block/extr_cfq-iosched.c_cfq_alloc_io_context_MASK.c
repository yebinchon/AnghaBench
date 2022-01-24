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
struct cfq_io_context {int /*<<< orphan*/  exit; int /*<<< orphan*/  dtor; int /*<<< orphan*/  cic_list; int /*<<< orphan*/  queue_list; int /*<<< orphan*/  last_end_request; } ;
struct cfq_data {TYPE_1__* queue; } ;
typedef  int gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  cfq_exit_io_context ; 
 int /*<<< orphan*/  cfq_free_io_context ; 
 int /*<<< orphan*/  cfq_ioc_count ; 
 int /*<<< orphan*/  cfq_ioc_pool ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct cfq_io_context* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cfq_io_context *
FUNC4(struct cfq_data *cfqd, gfp_t gfp_mask)
{
	struct cfq_io_context *cic;

	cic = FUNC3(cfq_ioc_pool, gfp_mask | __GFP_ZERO,
							cfqd->queue->node);
	if (cic) {
		cic->last_end_request = jiffies;
		FUNC1(&cic->queue_list);
		FUNC0(&cic->cic_list);
		cic->dtor = cfq_free_io_context;
		cic->exit = cfq_exit_io_context;
		FUNC2(cfq_ioc_count);
	}

	return cic;
}