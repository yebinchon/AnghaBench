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
struct io_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  ioc_data; int /*<<< orphan*/  radix_root; } ;
struct cfq_io_context {struct cfq_data* key; } ;
struct cfq_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfq_data*,struct io_context*,struct cfq_io_context*) ; 
 struct cfq_io_context* FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cfq_io_context*) ; 
 struct cfq_io_context* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct cfq_io_context *
FUNC9(struct cfq_data *cfqd, struct io_context *ioc)
{
	struct cfq_io_context *cic;
	unsigned long flags;
	void *k;

	if (FUNC8(!ioc))
		return NULL;

	FUNC4();

	/*
	 * we maintain a last-hit cache, to avoid browsing over the tree
	 */
	cic = FUNC3(ioc->ioc_data);
	if (cic && cic->key == cfqd) {
		FUNC5();
		return cic;
	}

	do {
		cic = FUNC1(&ioc->radix_root, (unsigned long) cfqd);
		FUNC5();
		if (!cic)
			break;
		/* ->key must be copied to avoid race with cfq_exit_queue() */
		k = cic->key;
		if (FUNC8(!k)) {
			FUNC0(cfqd, ioc, cic);
			FUNC4();
			continue;
		}

		FUNC6(&ioc->lock, flags);
		FUNC2(ioc->ioc_data, cic);
		FUNC7(&ioc->lock, flags);
		break;
	} while (1);

	return cic;
}