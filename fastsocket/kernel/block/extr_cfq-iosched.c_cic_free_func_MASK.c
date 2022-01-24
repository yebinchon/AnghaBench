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
struct io_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  radix_root; } ;
struct cfq_io_context {int /*<<< orphan*/  cic_list; int /*<<< orphan*/  dead_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct cfq_io_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct io_context *ioc, struct cfq_io_context *cic)
{
	unsigned long flags;

	FUNC0(!cic->dead_key);

	FUNC4(&ioc->lock, flags);
	FUNC3(&ioc->radix_root, cic->dead_key);
	FUNC2(&cic->cic_list);
	FUNC5(&ioc->lock, flags);

	FUNC1(cic);
}