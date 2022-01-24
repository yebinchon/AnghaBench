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
typedef  int /*<<< orphan*/  uint32_t ;
struct pstore {int dummy; } ;
struct disk_exception {void* new_chunk; void* old_chunk; } ;
struct core_exception {int /*<<< orphan*/  new_chunk; int /*<<< orphan*/  old_chunk; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct disk_exception* FUNC1 (struct pstore*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pstore *ps,
			    uint32_t index, struct core_exception *e)
{
	struct disk_exception *de = FUNC1(ps, index);

	/* copy it */
	de->old_chunk = FUNC0(e->old_chunk);
	de->new_chunk = FUNC0(e->new_chunk);
}