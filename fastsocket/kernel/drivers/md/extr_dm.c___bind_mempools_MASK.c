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
struct mapped_device {int /*<<< orphan*/ * bs; int /*<<< orphan*/ * tio_pool; int /*<<< orphan*/ * io_pool; } ;
struct dm_table {int dummy; } ;
struct dm_md_mempools {int /*<<< orphan*/ * bs; int /*<<< orphan*/ * tio_pool; int /*<<< orphan*/ * io_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_table*) ; 
 struct dm_md_mempools* FUNC2 (struct dm_table*) ; 

__attribute__((used)) static void FUNC3(struct mapped_device *md, struct dm_table *t)
{
	struct dm_md_mempools *p;

	if (md->io_pool && md->tio_pool && md->bs)
		/* the md already has necessary mempools */
		goto out;

	p = FUNC2(t);
	FUNC0(!p || md->io_pool || md->tio_pool || md->bs);

	md->io_pool = p->io_pool;
	p->io_pool = NULL;
	md->tio_pool = p->tio_pool;
	p->tio_pool = NULL;
	md->bs = p->bs;
	p->bs = NULL;

out:
	/* mempool bind completed, now no need any mempools in the table */
	FUNC1(t);
}