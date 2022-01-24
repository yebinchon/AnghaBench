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
struct io_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  radix_root; struct cfq_io_context* ioc_data; } ;
struct cfq_io_context {int /*<<< orphan*/  cic_list; int /*<<< orphan*/  queue_list; } ;
struct cfq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_io_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC8(struct cfq_data *cfqd, struct io_context *ioc,
		  struct cfq_io_context *cic)
{
	unsigned long flags;

	FUNC1(!FUNC4(&cic->queue_list));

	FUNC6(&ioc->lock, flags);

	FUNC0(ioc->ioc_data == cic);

	FUNC5(&ioc->radix_root, (unsigned long) cfqd);
	FUNC3(&cic->cic_list);
	FUNC7(&ioc->lock, flags);

	FUNC2(cic);
}