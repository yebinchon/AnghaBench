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
struct pstore {void* area; void* zero_area; void* header_area; TYPE_1__* store; } ;
struct TYPE_2__ {size_t chunk_size; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (size_t) ; 
 void* FUNC2 (size_t) ; 

__attribute__((used)) static int FUNC3(struct pstore *ps)
{
	int r = -ENOMEM;
	size_t len;

	len = ps->store->chunk_size << SECTOR_SHIFT;

	/*
	 * Allocate the chunk_size block of memory that will hold
	 * a single metadata area.
	 */
	ps->area = FUNC1(len);
	if (!ps->area)
		goto err_area;

	ps->zero_area = FUNC2(len);
	if (!ps->zero_area)
		goto err_zero_area;

	ps->header_area = FUNC1(len);
	if (!ps->header_area)
		goto err_header_area;

	return 0;

err_header_area:
	FUNC0(ps->zero_area);

err_zero_area:
	FUNC0(ps->area);

err_area:
	return r;
}