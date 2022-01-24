#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  (* v2_dumb_munmap ) (char*,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ pv_v2devops; } ;

/* Variables and functions */
 int /*<<< orphan*/  prom_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* romvec ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

void
FUNC4(char *vaddr, unsigned int num_bytes)
{
	unsigned long flags;

	if(num_bytes == 0x0) return;
	FUNC1(&prom_lock, flags);
	(*(romvec->pv_v2devops.v2_dumb_munmap))(vaddr, num_bytes);
	FUNC0();
	FUNC2(&prom_lock, flags);
	return;
}