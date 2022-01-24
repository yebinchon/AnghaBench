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
struct dm_md_mempools {scalar_t__ bs; scalar_t__ tio_pool; scalar_t__ io_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_md_mempools*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

void FUNC3(struct dm_md_mempools *pools)
{
	if (!pools)
		return;

	if (pools->io_pool)
		FUNC2(pools->io_pool);

	if (pools->tio_pool)
		FUNC2(pools->tio_pool);

	if (pools->bs)
		FUNC0(pools->bs);

	FUNC1(pools);
}