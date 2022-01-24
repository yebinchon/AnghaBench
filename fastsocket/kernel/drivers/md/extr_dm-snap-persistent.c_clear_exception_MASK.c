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
struct disk_exception {scalar_t__ new_chunk; scalar_t__ old_chunk; } ;

/* Variables and functions */
 struct disk_exception* FUNC0 (struct pstore*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct pstore *ps, uint32_t index)
{
	struct disk_exception *de = FUNC0(ps, index);

	/* clear it */
	de->old_chunk = 0;
	de->new_chunk = 0;
}