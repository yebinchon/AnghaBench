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
struct pstore {int valid; int version; struct disk_header* header_area; TYPE_1__* store; } ;
struct disk_header {void* chunk_size; void* version; void* valid; void* magic; } ;
struct TYPE_2__ {int chunk_size; } ;

/* Variables and functions */
 int SECTOR_SHIFT ; 
 int SNAP_MAGIC ; 
 int /*<<< orphan*/  WRITE ; 
 int FUNC0 (struct pstore*,struct disk_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct disk_header*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct pstore *ps)
{
	struct disk_header *dh;

	FUNC2(ps->header_area, 0, ps->store->chunk_size << SECTOR_SHIFT);

	dh = ps->header_area;
	dh->magic = FUNC1(SNAP_MAGIC);
	dh->valid = FUNC1(ps->valid);
	dh->version = FUNC1(ps->version);
	dh->chunk_size = FUNC1(ps->store->chunk_size);

	return FUNC0(ps, ps->header_area, 0, WRITE, 1);
}