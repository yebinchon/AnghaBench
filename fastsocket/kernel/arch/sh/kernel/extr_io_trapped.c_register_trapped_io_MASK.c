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
struct trapped_io {int num_resources; int /*<<< orphan*/  list; int /*<<< orphan*/  magic; scalar_t__ virt_base; struct resource* resource; } ;
struct resource {unsigned long flags; scalar_t__ start; scalar_t__ end; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IORESOURCE_IO ; 
 unsigned long IORESOURCE_MEM ; 
 int /*<<< orphan*/  IO_TRAPPED_MAGIC ; 
 int /*<<< orphan*/  PAGE_NONE ; 
 unsigned long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int TRAPPED_PAGES_MAX ; 
 int /*<<< orphan*/  VM_MAP ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trapped_io ; 
 int /*<<< orphan*/  trapped_io_disable ; 
 int /*<<< orphan*/  trapped_lock ; 
 int /*<<< orphan*/  trapped_mem ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct page* FUNC9 (struct trapped_io*) ; 
 scalar_t__ FUNC10 (struct page**,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(struct trapped_io *tiop)
{
	struct resource *res;
	unsigned long len = 0, flags = 0;
	struct page *pages[TRAPPED_PAGES_MAX];
	int k, n;

	if (FUNC8(trapped_io_disable))
		return 0;

	/* structure must be page aligned */
	if ((unsigned long)tiop & (PAGE_SIZE - 1))
		goto bad;

	for (k = 0; k < tiop->num_resources; k++) {
		res = tiop->resource + k;
		len += FUNC5((res->end - res->start) + 1, PAGE_SIZE);
		flags |= res->flags;
	}

	/* support IORESOURCE_IO _or_ MEM, not both */
	if (FUNC1(flags) != 1)
		goto bad;

	n = len >> PAGE_SHIFT;

	if (n >= TRAPPED_PAGES_MAX)
		goto bad;

	for (k = 0; k < n; k++)
		pages[k] = FUNC9(tiop);

	tiop->virt_base = FUNC10(pages, n, VM_MAP, PAGE_NONE);
	if (!tiop->virt_base)
		goto bad;

	len = 0;
	for (k = 0; k < tiop->num_resources; k++) {
		res = tiop->resource + k;
		FUNC3("trapped io 0x%08lx overrides %s 0x%08lx\n",
		       (unsigned long)(tiop->virt_base + len),
		       res->flags & IORESOURCE_IO ? "io" : "mmio",
		       (unsigned long)res->start);
		len += FUNC5((res->end - res->start) + 1, PAGE_SIZE);
	}

	tiop->magic = IO_TRAPPED_MAGIC;
	FUNC0(&tiop->list);
	FUNC6(&trapped_lock);
	if (flags & IORESOURCE_IO)
		FUNC2(&tiop->list, &trapped_io);
	if (flags & IORESOURCE_MEM)
		FUNC2(&tiop->list, &trapped_mem);
	FUNC7(&trapped_lock);

	return 0;
 bad:
	FUNC4("unable to install trapped io filter\n");
	return -1;
}